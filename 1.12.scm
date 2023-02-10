(define (pascal row col)
  (cond
    ((or (= col 1) (= col row)) 1)
    (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
(define (pascal-row row)
  (define (row-cycle col)
    (display (pascal row col)) (display " ")
    (if (> row col) (row-cycle (+ col 1)) (newline)))
  (row-cycle 1))
(define (display-pascal-tri rows)
  (define (row-iter row)
    (pascal-row row)
    (if (= row rows) (newline) (row-iter (+ row 1)))
    )
  (row-iter 1))
(display-pascal-tri 10)