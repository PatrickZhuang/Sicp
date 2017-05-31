;;;; 两种方式实现两个正整数相加
#lang sicp

(display "\n递归式计算------\n")
;;这种实现方式是递归式计算，解释器需要保存inc过程的数量
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;; 以下是计算过程
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)

;; 这种方式是迭代式计算
(display "\n迭代式计算------\n")
(define (plus a b)
  (if (= a 0)
      b
      (plus (dec a) (inc b))))

(plus 4 5)
(plus 3 6)
(plus 2 7)
(plus 1 8)
(plus 0 9)
