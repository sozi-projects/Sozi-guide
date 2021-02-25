#lang racket

(require
  txexpr
  pollen/tag
  pollen/decode)

(provide (all-defined-out))

(define (root . body)
  (txexpr 'div empty (decode-elements body #:txexpr-elements-proc decode-paragraphs)))

(define chapter    (default-tag-function 'h1))
(define section    (default-tag-function 'h2))
(define subsection (default-tag-function 'h3))

(define (link href . body)
  (txexpr 'a `((href ,href)) body))
