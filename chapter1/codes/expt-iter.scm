(define (expt-iter b n)
  (iter b n 1))

(define (iter b n product)
  (if (= n 0)
      product
      (iter b (- n 1) (* product b))))