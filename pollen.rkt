#lang racket

(require
  txexpr
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

(define chapter    (default-tag-function 'h1 #:class "chapter"))
(define section    (default-tag-function 'h2 #:class "section"))
(define subsection (default-tag-function 'h3 #:class "subsection"))
(define itemize    (default-tag-function 'ul #:class "itemize"))
(define enumerate  (default-tag-function 'ol #:class "enumerate"))
(define item       (default-tag-function 'li))

(define-syntax-rule (filter-attrs item ...)
  (filter identity (list item ...)))

(define (link url #:class [class-name #f] . body)
  (txexpr 'a
    (filter-attrs `(href ,url) (and class-name `(class ,class-name)))
    (if (empty? body) (list url) body)))
