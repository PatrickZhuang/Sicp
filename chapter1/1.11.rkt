;;;;练习1.11
#lang sicp

;;递归计算过程
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
           (* (f (- n 2)) 2)
           (* (f (- n 3)) 3)))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)

;;迭代计算过程
(define (func n)
  (f-iter 0 1 2 n))

(define (f-iter a b c n)
  (if (= n 0)
      a
      (f-iter b c (+ (* a 3) (* b 2) c) (- n 1))))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)