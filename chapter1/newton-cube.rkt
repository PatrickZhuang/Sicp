;;;;使用牛顿法实现求立方方根
#lang sicp

(define (square x)
  (* x x))

(define (good-enough? guess next-guess)
  (< (/ (abs (- next-guess guess)) guess) 0.001))

(define (average x y)
  (/ (+ x y) 3))

(define (improve guess x)
  (average (/ x (square guess)) (* guess 2)))


(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cube-iter (improve guess x) x)))

(define (cube x)
  (cube-iter 1.0 x))


(cube 8)
(cube 27)
(cube 1000000)
(cube 0.001)