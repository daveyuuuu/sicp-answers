(define (max x y)
  (if (> x y)
      x
      y))

(define (min x y)
  (if (< x y)
      x
      y))

(define (square x)
 (* x x))

(define (sum-largest-two-numbers-square x y z)
  (+ (square (max x y))
     (square (max (min x y) z)))
)
