(define (cont-frac-recur N D k)
  (define (recur i)
    (if (= i k)
        (/ (N i) (D i))
        (/ (N i) (+ (D i) (recur (+ i 1))))))
  (recur 1))

(define (cont-frac-iter N D k)
  (define (recur i res)
    (if (= i 0)
        res
        (recur (- i 1) (/ (N i) (+ res (D i))))))
  (recur k 0))