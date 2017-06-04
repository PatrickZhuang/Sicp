;;;; 使用欧几里得算法求最大公约数，如果r是a除以b的余数，那么a和b的最大公约数正好也是b和r的最大公约数
#lang sicp

(define (gcd a b )
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(gcd 206 40)