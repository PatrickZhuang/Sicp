;;;; 递归计算求帕斯卡三角第x行第y个数字，帕斯卡三角 最外层都是1内部某个数字都是位于它上面两个数字之和
#lang sicp

(define (triangle x y)
  (if (or (= y 1) (= y x)) ;;两侧都是1
      1
      (+ (triangle (- x 1) y)
         (triangle (- x 1) (- y 1)))))


(triangle 1 1)
(triangle 2 1)
(triangle 3 1)
(triangle 3 2)
(triangle 4 2)
(triangle 4 3)
(triangle 5 2)
(triangle 5 3)
(triangle 5 4)
