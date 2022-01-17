(define (sqrt-iter guess x)
  (if (good-enough guess x)
    guess
    (sqrt-iter (improve guess x) x)))


; 若试验题 1.6，取消下面注释，并注释掉上面 define 中的全部内容

; (load "new-if.scm")
; (define (sqrt-iter guess x)
;   (new-if (good-enough guess x)
;     guess
;     (sqrt-iter (improve guess x) x)))


