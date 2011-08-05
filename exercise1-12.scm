(define (pascal row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col )))))

(print (pascal 5 2))
