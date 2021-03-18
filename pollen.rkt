#lang racket

(require
  (for-syntax racket/syntax)
  syntax/parse/define
  txexpr
  threading
  pollen/core
  pollen/tag
  pollen/decode
  (prefix-in typo/ pollen/unstable/typography))

(provide
  root
  chapter
  section
  subsection
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
  (decode (txexpr 'main empty body)
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc          (compose1 punctuation smart-quotes typo/smart-dashes typo/smart-ellipses)))

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

; ------------------------------------------------------------------------------
; Headings
; ------------------------------------------------------------------------------

; Helper that defines an alias for a given HTML tag, setting the
; class attribute to the original markup name.
(define-simple-macro (define-simple-tag-function name tag)
  #:with pred-name  (format-id #'name "~a?" #'name)
  #:with class-name #'(symbol->string 'name)
  (begin
    (define name (default-tag-function 'tag #:class class-name))
    (define (pred-name xexpr)
      (and (txexpr? xexpr) (eq? 'tag (get-tag xexpr)) (eq? class-name (attr-ref xexpr 'class))))))

; ◊book:       h1
; ◊part:       h1
; ◊chapter:    h1
; ◊section:    h2
; ◊subsection: h3
(define-simple-tag-function book       h1)
(define-simple-tag-function part       h1)
(define-simple-tag-function chapter    h1)
(define-simple-tag-function section    h2)
(define-simple-tag-function subsection h3)

(define (get-title page)
  (select 'h1 page))

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

(define (link url #:class [class-name #f] #:rel [relation #f] . body)
      ; Use the URL as the body if it is missing.
  (~> (if (empty? body) (list url) body)
      ; Create an HTML link.
      (txexpr 'a `((href ,url)) _)
      ; Add the given class name if it is defined.
      (attr-join* 'class class-name)
      (attr-join* 'rel   relation)))

(define (link-image url #:src src-url #:alt [alt-text #f] #:width [width #f])
      ; Create an HTML image element.
  (~> (txexpr 'img `((src ,src-url)))
      ; Add the given alt and width attributes if set.
      (attr-join*  'alt   alt-text)
      (style-join* 'width width)
      ; Wrap the image in an HTML link.
      (txexpr 'a `((href ,url)) _)))

; ------------------------------------------------------------------------------
; Icons (using Fork-Awesome)
; ------------------------------------------------------------------------------

(define (icon id)
  (define cls (format "fa fa-~a" id))
  (txexpr 'i `((class ,cls)) empty))

(define (item-icon id)
  (define cls (format "fa-li fa fa-~a" id))
  (txexpr 'i `((class ,cls)) empty))

; ------------------------------------------------------------------------------
; Navigation
; ------------------------------------------------------------------------------

(define (to-url pagenode)
  (format "/~a" pagenode))
