(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (* 2 guess)
        (/ x
           (* guess guess)))
     3))

(define (good-enough? guess x)
    (< (/ (abs (- guess (improve guess x))) x) 0.0000001))

(define (cbrt x)
  (cbrt-iter 1.0 x))


(print (cbrt 729))
