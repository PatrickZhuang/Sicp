;;;;给定了任意数量的现金，写一个程序求兑换零钱的方式的总数量,树形递归效率低，线性迭代todo
#lang sicp

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (kind-to-coin kinds-of-coins)) kinds-of-coins)))))

;; map 硬币序号对应的币值
(define (kind-to-coin kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(define (count-change amount)
  (cc amount 5))

(count-change 100)