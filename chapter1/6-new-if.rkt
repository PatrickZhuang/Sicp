#lang sicp

;; 使用cond重新定义if关键字，因为解释器采用应用序，参数传入函数的时候都会先计算，所以无论predicate是true还是false，then-clause else-clause
;; 都会得到执行

(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))

(if true (display "good\n") (display "bad\n"))
(new-if true (display "good") (display "bad"))