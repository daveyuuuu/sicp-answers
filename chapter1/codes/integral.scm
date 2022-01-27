(load "common-sum.scm")

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (common-sum f (+ a (/ dx 2.0)) add-dx b) dx))