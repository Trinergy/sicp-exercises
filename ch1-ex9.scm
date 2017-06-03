#| (define (dec x) (- x 1))
(define (inc x) (+ x 1))
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5) |#

#|
The first procedure is recursive, it keeps calling down and won't have 
the value of a until the very end

The second procedure is iterative, the state changes immediately and can be tracked
|#