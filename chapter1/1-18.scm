(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even n)
  (= (remainder n 2) 0))

(define (fast-mult-iter a b )
  (iter a b 0))

(define (iter a b c)
  (cond ((= b 0) c)
        ((even b) (iter (double a) (halve b) c))
        (else (iter a (- b 1) (+ c a)))))