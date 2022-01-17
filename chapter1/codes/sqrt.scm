(load "improve.scm")
(load "good-enough.scm")
(load "sqrt-iter.scm")

(define (sqrt x)
  (sqrt-iter 1.0 x))