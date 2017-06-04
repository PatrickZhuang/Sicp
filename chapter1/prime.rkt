;;;;使用寻找因子法实现素数检测，算法复杂度 sqrt（n）
#lang sicp

(define (square n)
  (* n n))

(define (divides? a b)
  (= (remainder b a) 0))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (prime? n)
  (= (smallest-divisor  n) n))

(prime? 2)
(prime? 3)
(prime? 4)
(prime? 5)
(prime? 6)
(prime? 7)
(prime? 8)
