#lang sicp

(define (ack x y)
  (cond ((= y 0) 0)
        ((= x 0) (* y 2))
        ((= y 1) 2)
        (else (ack (- x 1) (ack x (- y 1))))))

(ack 1 10)
(ack 2 4)
(ack 3 3)

(define (f n) (ack 0 n)) ; 代表数学函数2n

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)

(define (g n) (ack 1 n)) ; 代表数学函数2的n次方

(g 0)
(g 1)
(g 2)
(g 3)
(g 10)

(define (h n) (ack 2 n)) ; 代表数学函数2的 2的n次方 次方
;; (ack 2 n) = (ack 1 (ack 2 (- n 1)))
;; (ack 1 1) = 2
;; (ack 1 2) = 4
;; (ack 1 4) = 16

(h 1)
(h 2)
(h 3)
(h 4)