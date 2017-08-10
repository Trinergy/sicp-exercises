(define (isNegative x)
  (< x 0))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) 
          (/ d g))))
(define (new-make-rat n d)
  (let ((g (abs(gcd n d)))
  (numNegative (isNegative n))
  (denomNegative (isNegative d)))
  (cond ((and numNegative
              denomNegative 
              (cons (/ (abs n) g)
               (/ (abs d) g))))
        ((and (not numNegative)
              denomNegative 
              (cons (/ (* n -1) g)
                    (/ d g))))
        (else (cons (/ n g)
                    (/ d g))))))
(new-make-rat 30 70)
(new-make-rat -30 70)
(new-make-rat 30 -70)
(new-make-rat -30 -70)
; normal operations:  double positive, numerator neg and denom positive
; special operations: double negative, numerator positive and denom negative
