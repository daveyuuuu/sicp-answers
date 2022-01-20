(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle count)
  (display count)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0) (+ count 1)))))

; (a)
; p 调用了 5 次

; (b)
; 每次调用时 angle / 3
; 所以时间和空间复杂度 lg a
; https://codology.net/post/sicp-solution-exercise-1-15/