(load "codes/prime.scm")
(load "codes/gcd.scm")

(define (filtered-accumulate combiner null-value term a next b filter filter-error-value)
  (cond ((> a b)
          null-value)
        ((filter a)
          (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter filter-error-value)))
        (else
          (combiner filter-error-value (filtered-accumulate combiner null-value term (next a) next b filter filter-error-value)))))

; prime sum 
(define (sum a b)
  (+ a b))

(define (term-sum a)
  a)

(define (next-sum a)
  (+ a 1))

(define (prime-sum a b)
  (filtered-accumulate sum 0 term-sum a next-sum b prime 0))

; product relatively prime to n
(define (product a b)
  (* a b))

(define (next-prod a)
  (+ a 1))

(define (term-prod a)
  a)

(define (relative-prime-product n)
  (define (product-filter a)
    (= (gcd a n) 1))
  (filtered-accumulate product 1 term-prod 1 next-prod (- n 1) product-filter 1))
