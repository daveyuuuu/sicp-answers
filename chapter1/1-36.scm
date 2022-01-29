(define tolerance 0.0001)

(define (fixed-point f first-guess step)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess step)
    (display step) (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next (+ step 1)))))
  (try first-guess (+ step 1)))

(define (f x)
  (/ (log 1000)
     (log x)))
; 30 steps on my computer

(define (f-smooth x)
  (/ (+ x (f x))
     2))
; 9 steps on my computer