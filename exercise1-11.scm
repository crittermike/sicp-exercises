(define (f-recur n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (f-recur (- n 1))
                     (* 2 (f-recur (- n 2)))
                     (* 3 (f-recur (- n 3)))))))

(print (f-recur 10))

; I can't figure out the iterative process :(
