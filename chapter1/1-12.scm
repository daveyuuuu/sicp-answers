; 从 0 开始计数行和列
(define (pascal-triangle n m)
  (if (or (= m 0) (= n m))
      1
      (+ (pascal-triangle (- n 1) (- m 1)) (pascal-triangle (- n 1) m))))