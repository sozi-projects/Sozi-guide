#lang racket

(require
  (for-syntax racket/syntax)
  syntax/parse/define
  txexpr
  threading
  pollen/core
  pollen/tag
  pollen/decode
  pollen/pagetree
  (prefix-in typo/ pollen/unstable/typography))

(provide
  root
  toc
  make-toc
  book
  book-subtitle
  chapter
  section
  subsection
  sozi
  author
  warning
  block-quote
  abbr
  get-title
  itemize
  itemize-icons
  enumerate
  link
  link-image
  icon
  item-icon
  to-url)


; ------------------------------------------------------------------------------
; Root element and document-level transformations
; ------------------------------------------------------------------------------

; Extract the current language code from the document metadata.
(define (current-lang)
  (select-from-metas 'lang (current-metas)))

; Transform a document root into an HTML main element.
; Apply typographical transformations to the document body.
(define (root . body)
  (~> `(main ,@body)
       (decode
         #:txexpr-elements-proc decode-paragraphs
         #:string-proc          (compose1 punctuation smart-quotes typo/smart-dashes typo/smart-ellipses))
       (insert-toc)))

; Language-specific smart quotes.
; This currently supports French double quotes, and English simple and double quotes.
(define (smart-quotes xexpr)
  (case (current-lang)
    [("fr") (typo/smart-quotes xexpr #:double-open  "«\u202F" #:double-close "\u202F»")]
    [else   (typo/smart-quotes xexpr)]))

; Language-specific punctuation transformations.
; In French, double punctuation marks are preceded by a thin non-breaking space.
(define (punctuation str)
  (case (current-lang)
    [("fr") (regexp-replaces str '([#px"[[:space:]]*\\?" "\u202F?"]
                                   [#px"[[:space:]]*\\!" "\u202F!"]
                                   [#px"[[:space:]]*\\:" "\u202F:"]
                                   [#px"[[:space:]]*\\;" "\u202F;"]))]
    [else str]))

; Insert a table of contents in the current page.
(define (insert-toc tx)
  (cond
    [(chapter-page? tx)
     (define sec-counter 0)
     ; Find all section headings and insert an empty anchor inside.
     ; This will prevent replacing the section ID if it exists.
     (define-values (tx/a sec-lst) (splitf-txexpr tx section?
                                     (λ (sec)
                                       (set! sec-counter (add1 sec-counter))
                                       (txexpr (get-tag sec)
                                               (get-attrs sec)
                                               (cons (txexpr 'a `((id ,(format "sec-~a" sec-counter))))
                                                     (get-elements sec))))))
     ; If sections were found, insert a table of contents
     ; after the chapter heading.
     (define toc (if (empty? sec-lst)
                   empty
                   (list (txexpr 'ul empty
                           (for/list ([(sec i) (in-indexed sec-lst)])
                             (~>> sec
                                  (get-elements)
                                  (txexpr 'a `((href ,(format "#sec-~a" (add1 i)))))
                                  (txexpr* 'li empty)))))))
     (match-define-values (tx/t _) (splitf-txexpr tx/a chapter?
                                     (λ (heading)
                                       (txexpr 'nav '((class "toc"))
                                         (cons heading toc)))))
     tx/t]

    [else tx]))

; ------------------------------------------------------------------------------
; Book table of contents
; ------------------------------------------------------------------------------

(define (make-toc doc [root 'pagetree-root])
  (define ptree (get-pagetree "index.ptree"))

  (define (make-toc-item node)
    (txexpr* 'a `((href ,(to-url node))) (get-title node)))

  (define (make-toc-tree nodes)
    (txexpr 'ul empty
      (for/list ([n (in-list nodes)])
        (define ti (make-toc-item n))
        (define cs (children n ptree))
        (txexpr 'li empty
          (if (list? cs)
            (list ti (make-toc-tree cs))
            (list ti))))))

  (txexpr* 'main empty
    (txexpr* 'nav '((class "toc"))
      (apply @ (get-elements doc))
      (make-toc-tree (children root ptree)))))

; ------------------------------------------------------------------------------
; Simple tag functions
; ------------------------------------------------------------------------------

; Helper that defines an alias for a given HTML tag, setting the
; class attribute to the original markup name.
(define-simple-macro (define-simple-tag-function name tag)
  #:with pred-name  (format-id #'name "~a?" #'name)
  #:with class-name #'(symbol->string 'name)
  (begin
    (define name (default-tag-function 'tag #:class class-name))
    (define (pred-name xexpr)
      (and (txexpr? xexpr) (eq? 'tag (get-tag xexpr)) (equal? class-name (attr-ref xexpr 'class #f))))))

(define-simple-tag-function toc           h1)
(define-simple-tag-function book          h1)
(define-simple-tag-function book-subtitle h2)
(define-simple-tag-function part          h1)
(define-simple-tag-function chapter       h1)
(define-simple-tag-function section       h2)
(define-simple-tag-function subsection    h3)
(define-simple-tag-function author        address)
(define-simple-tag-function warning       aside)
(define-simple-tag-function block-quote   blockquote)

(define (get-title page)
  (select 'h1 page))

(define (book-page? tx)
  (findf-txexpr tx book?))

(define (part-page? tx)
  (findf-txexpr tx part?))

(define (chapter-page? tx)
  (findf-txexpr tx chapter?))

(define (abbr title . body)
  (txexpr 'abbr `((title ,title)) body))

; ------------------------------------------------------------------------------
; Lists
; ------------------------------------------------------------------------------

; Detect a list item separator as a string of two or more newlines.
(define (list-item-sep? elt)
  (and (string? elt) (regexp-match #rx"\n\n+" elt)))

; Detect an element that is not a list item separator.
(define (not-list-item-sep? elt)
  (not (list-item-sep? elt)))

; Define custom markup for a given HTML list tag.
; with a given optional list of class names.
; The given function name is automatically added as a class name to the result.
(define-syntax-rule (define-list-function name tag class-name ...)
  (define-tag-function (name attrs body)
    ; Merge newlines and remove list item separators at the beginning.
    (define body-merged (~> body
                            (merge-newlines)
                            (dropf list-item-sep?)))
    ; Detect item separators and group elements that belong to each list item.
    ; Each iteration processes a list of remaining elements lst that is
    ; split with respect to the last list item separator.
    ; The right sublist is accumulated in acc, and the left sublist is
    ; processed in the next iteration until it is empty.
    (define item-bodies (let loop ([acc empty] [lst body-merged])
                          ; Remove list item separators at the end.
                          (define lst^ (dropf-right lst list-item-sep?))
                          ; If there is no other child to process, terminate.
                          ; Else, split lst^ at the first list item separator
                          ; from the right, and add the right part to the result.
                          (if (empty? lst^)
                            acc
                            (let-values ([(l r) (splitf-at-right lst^ not-list-item-sep?)])
                              (loop (cons r acc) l)))))
        ; Wrap each item body in an HTML list item element.
    (~> (for/list ([it (in-list item-bodies)])
          (txexpr 'li empty it))
        ; Wrap all list items in an HTML list element with the given tag.
        (txexpr tag attrs _)
        ; Add class names to the list element.
        (attr-join 'class (symbol->string 'name))
        (attr-join 'class class-name)
        ...)))

; ◊itemize:       unordered list
; ◊itemize-icons: unordered list with icons instead of bullets
; ◊enumerate:     ordered list
(define-list-function itemize       'ul)
(define-list-function itemize-icons 'ul "fa-ul")
(define-list-function enumerate     'ol)

; ------------------------------------------------------------------------------
; Links
; ------------------------------------------------------------------------------

; Like attr-join but ignores falsy values.
(define (attr-join* tx key value)
  (if value
    (attr-join tx key value)
    tx))

; Helper that adds, or appends to, a style attribute of an element.
(define (style-join tx key value)
  (attr-join tx 'style (format "~a:~a;" key value)))

; Like style-join but ignores falsy values.
(define (style-join* tx key value)
  (if value
    (style-join tx key value)
    tx))

(define (link url #:class [class-name #f] #:rel [relation #f] #:download [download #f] . body)
      ; Use the URL as the body if it is missing.
  (~> (if (empty? body) (list url) body)
      ; Create an HTML link.
      (txexpr 'a `((href ,url)) _)
      ; Add the given class name if it is defined.
      (attr-join* 'class class-name)
      (attr-join* 'download (and download (first (regexp-match #rx"[^/]+$" url))))
      (attr-join* 'rel   relation)))

(define (link-image url src-url #:alt [alt-text #f] #:width [width #f])
      ; Create an HTML image element.
  (~> (txexpr 'img `((src ,src-url)))
      ; Add the given alt and width attributes if set.
      (attr-join*  'alt   alt-text)
      (style-join* 'width width)
      ; Wrap the image in an HTML link.
      (txexpr* 'a `((href ,url)) _)))

; ------------------------------------------------------------------------------
; Sozi
; ------------------------------------------------------------------------------

(define (sozi url)
  (txexpr 'iframe `((src ,url) (class "sozi"))))

; ------------------------------------------------------------------------------
; Icons (using Fork-Awesome)
; ------------------------------------------------------------------------------

(define (icon id)
  (define cls (format "fa fa-~a" id))
  (txexpr 'i `((class ,cls))))

(define (item-icon id)
  (define cls (format "fa-li fa fa-~a" id))
  (txexpr 'i `((class ,cls))))

; ------------------------------------------------------------------------------
; Navigation
; ------------------------------------------------------------------------------

(define (to-url pagenode)
  (format "/~a" pagenode))
