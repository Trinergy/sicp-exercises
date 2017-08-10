(define (f n)
  (cond ((< n 3) n)
    (else (+ (f (- n 1))
             (* 2 (f (- n 2)))
             (* 3 (f (- n 3)))))))

(define (f_i n)
  (define (f_iter 2 1 0 n)))

(define (f_iter prod1 prod2 prod3 count)
    (if (< count 3)
        count
        (f_iter (+ prod1 prod2 prod3) pro)))
