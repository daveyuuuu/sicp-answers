(load "common-sum.scm")

(define (identity x) x)

(define (sum-integers a b)
  (common-sum identity a inc b))