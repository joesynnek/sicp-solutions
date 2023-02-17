(define (square n) (* n n))
(define (even? n) (= (remainder n 2) 0))

(define (pow n exp)
  (cond ((= n 1) 1)
        ((= exp 0) 1)
        ((even? exp) (square (pow n (/ exp 2))))
        (else (* n (square (pow n (/ (- exp 1) 2)))))))