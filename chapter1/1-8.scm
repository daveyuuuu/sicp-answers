(define (improve guess x)
  ( / (+ (/ x (square guess)) (* guess 2))
    3))

(define (good-enough guess x)
  (< (abs (- 1 (/ ( * guess (square guess)) x))) 0.0001))

(define (cube-root-iter guess x)
  (if (good-enough guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))



