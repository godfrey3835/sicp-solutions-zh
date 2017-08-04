;Exercise 1.11.  A function f is defined by the rule
;that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
;Write a procedure that computes f by means of a recursive process.
;Write a procedure that computes f by means of an iterative process.

;recursive process
(define (f-rec n)
        (cond ((< n 3) n)
              (else (+ (f-rec (- n 1))
                       (* 2 (f-rec (- n 2)))
                       (* 3 (f-rec (- n 3))) ))))

;(f-rec 4)
;(f-rec 5)
;(f-rec 6)


; iterative process
(define (f-iter a b c count)
        (if (= 0 count)
            c
            (f-iter b
                    c
                    (+ c
                       (* 2 b)
                       (* 3 a))
                    (- count 1))))

(define (f n)
        (f-iter 0 1 2 (- n 2)))



(f 3)
(f 4)
(f 5)
(f 6)
