;Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum ;of the squares of the two larger numbers.

(define (sumSquare a b c)
  (if (< a b)
    (if (< c a)
      (+ (* a a) (* b b))
      (+ (* c c) (* b b)))
    (if (< c b)
      (+ (* a a) (* b b))
      (+ (* a a) (* c c)))))

;(sumSquare 5 2 3)