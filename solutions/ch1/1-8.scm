;Exercise 1.8.  Newton's method for cube roots is based on the fact that if y is an approximation
;to the cube root of x, then a better approximation is given by the value ((x/y^2) + 2y) / 3
;
;Use this formula to implement a cube-root procedure analogous to the square-root procedure.
;(In section 1.3.4 we will see how to implement Newton's method in general as an abstraction of
;these square-root and cube-root procedures.)

(define (good-enough? guess x)
(< (abs (- (* guess
              guess
              guess)
            x))
    0.001))

(define (improve guess x)
  (/ (+ (/ x
          (* guess
             guess))
        (* 2
           guess))
      3))

(define (cube-tier guess x)
  (if (good-enough? guess x)
    guess
    (cube-tier (improve guess x)
                x)))

(define (cube-root x) (cube-tier 1.0 x))

; To find cube root of 27
(cube-root 27)

