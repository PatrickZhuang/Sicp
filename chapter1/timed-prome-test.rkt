;;;;使用寻找因子法实现的prime？时间复杂度是sqrt n 所以，下列检测素数时间基本按照sqrt10倍的速度增加
#lang sicp
(#%require "prime.rkt")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(timed-prime-test 100)
(timed-prime-test 1009)
(timed-prime-test 10009)
(timed-prime-test 100003)
(timed-prime-test 1000003)
(timed-prime-test 10000019)
