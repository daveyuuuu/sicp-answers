(define (count-change-iter amount)
  (cc-fities amount 0))

(define (cc-fities amount acc)
  (cond ((= amount 0) (+ acc 1))
        ((< amount 0) acc)
        (else (cc-fities (- amount 50) (cc-quarters amount acc)))))

(define (cc-quarters amount acc)
  (cond ((= amount 0) (+ acc 1))
        ((< amount 0) acc)
        (else (cc-quarters (- amount 25) (cc-dimes amount acc)))))

(define (cc-dimes amount acc)
  (cond ((= amount 0) (+ acc 1))
        ((< amount 0) acc)
        (else (cc-dimes (- amount 10) (cc-nickles amount acc)))))

(define (cc-nickles amount acc)
  (cond ((= amount 0) (+ acc 1))
        ((< amount 0) acc)
        (else (cc-nickles (- amount 5) (cc-pennies amount acc)))))
(define (cc-pennies amount acc)
  (cond ((= amount 0) (+ acc 1))
        ((< amount 0) acc)
        (else (cc-pennies (- amount 1) (cc-zero amount acc)))))

(define (cc-zero amount acc)
  acc)