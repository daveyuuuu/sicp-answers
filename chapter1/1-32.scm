(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))

; accumulate sum implementation
(define (sum a b)
  (+ a b))

(define (term-sum a)
  a)

(define (next-sum a)
  (+ a 1))

(define (accumulate-sum a b)
  (accumulate sum 0 term-sum a next-sum b))

(define (accumulate-sum-iter a b)
  (accumulate-iter sum 0 term-sum a next-sum b))


; accumulate product implementation
(define (product a b)
  (* a b))

(define (term-prod n)
  (* (/ (- n 1.0) n)
     (/ (+ n 1.0) n)))

(define (next-prod n)
  (+ n 2))

(define (accumulate-prod n)
  (accumulate product 1 term-prod 3 next-prod n))

(define (accumulate-prod-iter n)
  (accumulate-iter product 1 term-prod 3 next-prod n))