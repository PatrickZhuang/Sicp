;;;; 迭代式计算方式实现阶乘
#lang sicp

(define (factorial n)
  (factorial-iter 1 1 n))

(define (factorial-iter product counter max-number)
  (if (> counter max-number)
      product
      (factorial-iter (* product counter) (+ counter 1) max-number)))

(factorial 1)
(factorial 2)
(factorial 3)
(factorial 4)
(factorial 5)