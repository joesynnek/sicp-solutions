(define (curt target)
  (guess 1 target))
(define (generate-next-guess x target)
  (/
    (+
      (/ target (* x x))
      (* 2 x))
    3))
(define (guess x target)
  (if (good-enough x target)
    x
    (guess
      (generate-next-guess x target)
      target)))
(define (cube x)
  (* x x x))
(define (good-enough x target)
  (< (abs (- (cube x) target)) 0.0001))
(curt 27)