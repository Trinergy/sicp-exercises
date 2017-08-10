(define (square n)
  (* n n))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (new-fast-expt a b n)
  (* a
    (fast-expt b n)))

(define (true-fast-expt a b n)
  (cond ((= n 0) a)
        (else (true-fast-expt (+ a (*(fast-expt b n)(fast-expt b (- n 1))))
                                 b
                                 (- n 1)))))
(fast-expt 3 5)
(true-fast-expt 1 3 5)
