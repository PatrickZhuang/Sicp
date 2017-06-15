;;;;高阶过程
#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 1000)