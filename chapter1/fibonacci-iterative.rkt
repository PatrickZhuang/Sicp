;;;; 斐波那契迭代实现，效率高，没有递归简洁明了，需要借助状态
#lang sicp

(define (fib n)
  (fib-iter 0 1 n))

(define (fib-iter previous current n)
  (if (= n 0 ) previous
      (fib-iter current (+ previous current) (- n 1))))

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
(fib 5)
(fib 6)