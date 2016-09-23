#!/usr/bin/petite --script

;; Ben Bitdiddle evaluation order test

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;; If the interpreter uses Applicative-order => the test won't finish since in this way of evaluation, the interpreter 
;; evaluates each sub expression before applying the operation, so it will tend to evaluate `p` indefinitely

;; If the interpreter uses Normal-order evaluation => the result will be 0 since the interpreter won't need to
;; evaluate `p` (expansion phase). In the evaluation phase, the if special form will be evaluated first, which will
;; have 0 as consequent and the call (p) will never be evaluated.
