(define (f-iter n)
  (cond ((< n 3) n)
        (else
          (+
            (f-iter (- n 1))
            (* 2 (f-iter (- n 2)))
            (* 3 (f-iter (- n 3)))
            ))))

(define (f-cycle n)
  (cond ((< n 3) n)
        (else (cycle 2 1 0 3 n))))
(define (cycle n1 n2 n3 idx n)
  (define sum (+ n1 (* 2 n2) (* 3 n3)))
  (cond ((= idx n) sum)
        (else (cycle sum n1 n2 (+ idx 1) n))))