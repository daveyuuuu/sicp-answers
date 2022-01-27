(define (common-sum term a next b)
  (if (> a b)
      0
      (+ (term a)
          (common-sum term (next a) next b))))