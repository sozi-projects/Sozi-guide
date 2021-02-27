#lang racket

(require
  txexpr
  pollen/core
  pollen/tag
  pollen/decode
  pollen/unstable/typography)

(provide (all-defined-out))

(define (root . body)
  (define sq (case (select-from-metas 'lang (current-metas))
               [("fr") smart-quotes-fr]
               [else smart-quotes]))
  (define punct (case (select-from-metas 'lang (current-metas))
                  [("fr") punctuation-fr]
                  [else identity]))
  (decode (txexpr 'div empty body)
    #:txexpr-elements-proc decode-paragraphs
    #:string-proc (compose1 punct sq smart-dashes smart-ellipses)))

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

(define (link href . body)
  (txexpr 'a `((href ,href)) body))
