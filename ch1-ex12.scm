(define (triangle n)
  (cond (= n 0) (list)
        (= n 1) (list '1)
        (else
          (define (new_row) (list '1))
          (define (result) (triangle((- n 1)))
          (define (last_row) (resu))))
  )
