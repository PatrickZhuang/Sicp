;;;; 使用费马小定理检查n是否是素数，和以往的算法都能保证计算正确不同，费马检查是概率算法，检查次数越多可信度越高。
#lang sicp
(#%require (only racket random))

(define (square x)
  (* x x))

;;用于计算一个数base的幂exp对另一个数m取模的结果,使用连续求平方法快速求解，基于定义 x*y % m = ((x%m)*(y%m)) %m
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder (* base (expmod base (- exp 1) m)) m))))

;;费马测试
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

;;按照给定次数执行费马测试
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n)(fast-prime? n (- times 1)))
        (else false)))

(fast-prime? 100 10)
(fast-prime? 71 10)
(fast-prime? 1234 10)
(fast-prime? 5783 10)
(fast-prime? 57831113 10000)