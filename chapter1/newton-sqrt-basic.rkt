;;;;使用牛顿法实现求平方根，此种实现对于特别小和特别大的数字效果都不是很好，good-enough的实现方式导致精度不够
#lang sicp

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (good-enough-enhance? guess next-guess)
  (< (/ (abs (- next-guess guess)) guess) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt-iter-enhance guess x)
  (if (good-enough-enhance? guess (improve guess x))
      (improve guess x)
      (sqrt-iter-enhance (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-enhance x)
  (sqrt-iter-enhance 1.0 x))

(sqrt 9)
(sqrt-enhance 9)
(sqrt 4)
(sqrt-enhance 4)
(sqrt 7)
(sqrt-enhance 7)
(sqrt 3)
(sqrt-enhance 3)
(sqrt 2)
(sqrt-enhance 2)
(sqrt 1)
(sqrt-enhance 1)
(sqrt 0.0000004)
(sqrt-enhance 0.0000004)
(sqrt 3000000000000)
(sqrt-enhance 3000000000000)