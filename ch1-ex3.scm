(define (square n) (* n n))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (largest-number a b) (if (> a b) a b))

(define (sum-of-largest-squares x y z)
  (define n (largest-number x y))
  (sum-of-squares n (if (= n x)
                        (largest-number y z)
                        (largest-number x z)
                        )
                      )
                    )

(sum-of-largest-squares 1 3 3)
