#!/usr/bin/petite --script

(load "../util/io.ss")

(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-square (+ a 1) (* a 2)))

;; Procedure that takes 3 numbers as arguments and return the sum of the square of the two larger numbers
(define (sum-of-two-larger a b c)
  (define largest (max-on-three a b c))
  (+ largest (max-on-three-and-different-from largest a b c)))

;; let's suppose that max function is not yet defined in the environment
(define (max a b)
  (if (< a b)
      b
      a))

(define (max-on-three a b c)
  (max a (max b c)))

(define (max-on-three-and-different-from diff a b c)
  (cond ((= a diff) (max b c))
	((= b diff) (max a c))
	((= c diff) (max a b))))
