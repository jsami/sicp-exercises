n#!/usr/bin/petite --script

(load "./util/io.ss")

(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-square (+ a 1) (* a 2)))


;; Procedure that take 3 numbers as arguments and return the sum of the square of the two larger numbers
(define (sum-of-two-larger a b c)
  (define largest (max-three a b c))
  (+ largest (max-three-different-from largest a b c)))
  
(define (max-two a b)
  (if (< a b)
      b
      a))

(define (max-three a b c)
  (max a (max b c)))

(define (max-three-different-from diff a b c)
  (cond ((= a diff) (max-two b c))
	((= b diff) (max-two a c))
	((= c diff) (max-two a b))))
