(define (sqrt-iter guess x change)
  (if good-enough? change x)
    guess
    (sqrt-iter (improve guess x) 
               x 
               (- (improve guess x) guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (good-enough? change x)
  (< (abs (/ change x)) 10))

(define (sqrt x)
  (sqrt-iter 1.0 x 1.0))


(print (square (sqrt 9)))
