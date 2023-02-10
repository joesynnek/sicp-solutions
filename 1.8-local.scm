(define (curt-local target)
  (define (generate-next-guess x)
    (/
      (+
        (/ target (* x x))
        (* 2 x))
      3))
  (define (guess x)
    (if (good-enough x)
      x
      (guess (generate-next-guess x))))
  (define (cube x)
    (* x x x))
  (define (good-enough x)
    (< (abs (- (cube x) target)) 0.0001))
    (guess 1))
(curt-local 27)