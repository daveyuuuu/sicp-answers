(define (expmod base exp m)
  (cond ((= exp 0) 1)
         ((even? exp)
          (remainder (square (expmod base (/ exp 2) m)) m))
         (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (test-Carmichael n)
  (try n (- n 1)))

(define (try n a)
  (cond ((= a 1) #t)
        ((not (= (expmod a n n) a)) #f)
        (else (try n (- a 1)))))


; 测试结果如下

; 1 ]=> (test-Carmichael 561)

;Value: #t

; 1 ]=> (test-Carmichael 1105)

;Value: #t

; 1 ]=> (test-Carmichael 1729)

;Value: #t

; 1 ]=> (test-Carmichael 2465)

;Value: #t

; 1 ]=> (test-Carmichael 2821)

;Value: #t

; 1 ]=> (test-Carmichael 6601)

;Value: #t