#lang racket

(require
  txexpr
  threading
  pollen/core
  pollen/tag
  pollen/decode
  pollen/unstable/typography)

(provide (all-defined-out))

(define (root . body)
  (define-values (smq pct)
    (case (select-from-metas 'lang (current-metas))
      [("fr") (values smart-quotes-fr punctuation-fr)]
      [else   (values smart-quotes    identity)]))
  (decode (txexpr 'div empty body)
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 pct smq smart-dashes smart-ellipses)))

(define (smart-quotes-fr xexpr)
  (smart-quotes xexpr
    #:double-open  "«\u202F"
    #:double-close "\u202F»"))

(define (punctuation-fr str)
  (println str)
  (define res (regexp-replaces str '([#px"[[:space:]]*\\?" "\u202F?"]
                                     [#px"[[:space:]]*\\!" "\u202F!"]
                                     [#px"[[:space:]]*\\:" "\u202F:"]
                                     [#px"[[:space:]]*\\;" "\u202F;"])))
  (println res)
  res)

(define-syntax-rule (define-custom-markup fn tag)
  (define fn (default-tag-function tag #:class (symbol->string 'fn))))

(define-custom-markup chapter    'h1)
(define-custom-markup section    'h2)
(define-custom-markup subsection 'h3)

(define (list-item-sep? elt)
  (and (string? elt) (regexp-match #rx"\n\n+" elt)))

(define (not-list-item-sep? elt)
  (not (list-item-sep? elt)))

(define-syntax-rule (define-list-function name tag class-name ...)
  (define-tag-function (name attrs body)
    ; Merge newlines and remove head newlines.
    (define mbody (~> (merge-newlines body)
                      (dropf       list-item-sep?)
                      (dropf-right list-item-sep?)))
    ; Detect item separators.
    (define sbody (let loop ([acc empty] [lst mbody])
                        (if (empty? lst)
                          acc
                          (let-values ([(l r) (splitf-at-right lst not-list-item-sep?)])
                            (loop (cons r acc) (dropf-right l list-item-sep?))))))
    ; Return a new HTML list element with list items.
    (define tx (txexpr tag attrs (for/list ([it (in-list sbody)])
                                   (txexpr 'li empty it))))
    ; Set the custom markup name as a class name, and join the given other class names.
    (attr-set tx 'class (string-join (list (symbol->string 'name) class-name ...) " "))))

(define-list-function itemize       'ul)
(define-list-function itemize-icons 'ul "fa-ul")
(define-list-function enumerate     'ol)

(define-syntax-rule (filter* item ...)
  (filter identity (list item ...)))

(define-syntax-rule (make-style-attr item ...)
  (list 'style (string-join (for/list ([it (in-list (filter* item ...))])
                              (format "~a:~a;" (first it) (second it))))))

(define (link url #:class [class-name #f] . body)
  (txexpr 'a
    (filter* `(href ,url) (and class-name `(class ,class-name)))
    (if (empty? body) (list url) body)))

(define (link-image url #:src src-url #:alt [alt-text #f] #:width [width #f])
  (txexpr 'a `((href ,url))
    (list (txexpr 'img
            (filter* `(src ,src-url)
                      (and alt-text `(alt ,alt-text))
                      (make-style-attr (and width `(width ,width))))))))

(define (icon id)
  (define cls (format "fa fa-~a" id))
  (txexpr 'i `((class ,cls)) empty))

(define (item-icon id)
  (define cls (format "fa-li fa fa-~a" id))
  (txexpr 'i `((class ,cls)) empty))
