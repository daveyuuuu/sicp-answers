; (define (good-enough guess x)
;   (< (abs (- (square guess) x)) 0.01))


; better good enough
(define (good-enough guess x)
  (< (abs (- 1 (/ (square guess) x))) 0.0001))
