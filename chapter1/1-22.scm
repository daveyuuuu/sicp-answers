(load "./codes/prime.scm")

; real-time-clock 返回毫秒级

(define (helper n count start-time)
  (cond ((= count 0) (display (- (real-time-clock) start-time)) (display "ms"))
        ((prime n) (display n) (newline) (helper (+ n 1) (- count 1) start-time))
        (else (helper (+ n 1) count start-time))))

(define (find-larger-3-prime n)
  (helper n 3 (real-time-clock)))