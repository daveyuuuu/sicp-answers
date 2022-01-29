(load "codes/fixed-point.scm")

(define (f x)
  (+ 1
     (/ 1 x)))

; execute (fixed-point f 1.0)