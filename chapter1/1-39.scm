(define (cont-frac N D k)
  (define (recur i)
    (if (= i k)
        (/ (N i) (D i))
        (/ (N i) (+ (D i) (recur (+ i 1))))))
  (recur 1))

(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1)
                              x
                              (- (square x))))
              (lambda (i) (- (* i 2) 1.0))
              k))
