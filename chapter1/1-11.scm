(define (fn-recur n)
  (if (< n 3)
      n
      (+ (fn-recur (- n 1)) (* 2 (fn-recur (- n 2))) (* 3 (fn-recur (- n 3))))))

(define (fn-iter n)
  (if (< n 3)
      n
      (iter 2 1 0 (- n 2))))


; 类似斐波那契数列的迭代解法
(define (iter a b c count)
  (if (= count 0)
      a
      (iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))