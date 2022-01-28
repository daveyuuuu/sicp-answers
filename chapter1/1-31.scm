(define (product-recur a term next b )
  (if (> a b)
      1
      (* (term a)
          (product-recur (next a) term next b))))


(define (product-iter a term next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (next n)
  (+ n 2))

(define (term n)
  (* (/ (- n 1.0) n)
     (/ (+ n 1.0) n)))

(define (pi-recur n)
  (* 4 (product-recur 3 term next n)))

(define (pi-iter n)
  (* 4 (product-iter 3 term next n)))

