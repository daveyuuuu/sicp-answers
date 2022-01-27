(load "common-sum.scm")

(define (inc n)
  (+ n 1))

(define (sum-cubes a b)
  (common-sum cube a inc b))