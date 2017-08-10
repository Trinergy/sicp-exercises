(define (inc n)
  (+ n 1))

(define (dec n)
  (- n 1))

(define (add a b)
  (if (= b 0)
    a
    (add (inc a) (dec b))))

(define (even? n)
  (= (remainder n 2) 0))

(add 1 10)

(define (better-add a b)
  (cond ((or (= b 0) (= a 0)) 0)
        ((even? b) (add (* (+ a 1) 2) (/ b 2)))
        (else (better-add (inc a) (dec b)))
        ))

(better-add 1 10)
