;;;; 递归式计算方式实现阶乘
#lang sicp

(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))

(factorial 1)
(factorial 2)
(factorial 3)
(factorial 4)
(factorial 5)