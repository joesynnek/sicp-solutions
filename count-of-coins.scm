(define (cc amount)
  (count-of-operands amount 5))

(define (count-of-operands amount coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= coins 0)) 0)
        (else (
          +
          (count-of-operands amount (- coins 1))
          (count-of-operands (- amount (demonination-of-coin coins)) coins)))))

(define (demonination-of-coin type)
  (cond ((= type 1) 1)
        ((= type 2) 5)
        ((= type 3) 10)
        ((= type 4) 25)
        ((= type 5) 50)))