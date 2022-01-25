(define (remainder-check x n)
  (if (and (not (or (= x 1) (= x (- n 1))))
           (= (remainder (* x x) n) 1))
      0
      (remainder (* x x) n)))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
         ((even? exp)
          (remainder-check (expmod base (/ exp 2) m) m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (try n a)
  (= (expmod a (- n 1) n) 1))

(define (test n times)
  (cond ((= times 0) #t)
        ((try n (+ 1 (random (- n 1)))) (test n (- times 1)))
        (else #f)))

(define (miller-rabin n)
  (test n 10))