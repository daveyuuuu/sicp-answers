(define (h a b n)
  (/ (- b a)
      n))

(define (coe n k)
  (cond ((or (= k 0) (= k n)) 1)
        ((even? k) 2)
        (else 4)))

(define (term a b k n)
  (cube (+ a (* k (h a b n)))))

(define (next a b k n)
  (* (coe n k) (term a b k n)))

(define (simpson-integral a b k n res)
  (cond ((> k n) (/ (* (h a b n) res) 3))
        (else (simpson-integral a b (+ k 1) n (+ res (next a b k n))))))

