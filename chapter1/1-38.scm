(define (cont-frac-recur N D k)
  (define (recur i)
    (if (= i k)
        (/ (N i) (D i))
        (/ (N i) (+ (D i) (recur (+ i 1))))))
  (recur 1))

(define (e k)
  ( + 2 (cont-frac-recur (lambda (i) 1.0)
                   (lambda (i) (if (= (modulo i 3) 2)
                                  (* 2 (/ (+ i 1) 3))
                                  1.0))
                  k)))


