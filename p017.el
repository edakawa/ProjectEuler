;;; p017.el --- Project Euler Problem 17.
;;
;; $Id: p017.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 1 から 1000 までの数字の英単語表記の文字数を求める
;;

;;; Code:

(require 'cl-lib)

(defvar words '((   1 . "one")
                (   2 . "two")
                (   3 . "three")
                (   4 . "four")
                (   5 . "five")
                (   6 . "six")
                (   7 . "seven")
                (   8 . "eight")
                (   9 . "nine")
                (  10 . "ten")
                (  11 . "eleven")
                (  12 . "twelve")
                (  13 . "thirteen")
                (  14 . "fourteen")
                (  15 . "fifteen")
                (  16 . "sixteen")
                (  17 . "seventeen")
                (  18 . "eighteen")
                (  19 . "nineteen")
                (  20 . "twenty")
                (  30 . "thirty")
                (  40 . "forty")
                (  50 . "fifty")
                (  60 . "sixty")
                (  70 . "seventy")
                (  80 . "eighty")
                (  90 . "ninety")
                ( 100 . "hundred")
                (1000 . "thousand")))

(cl-flet ((conv (n) (length (cdr (assoc n words)))))
  (cl-labels ((count (n)
                     (cond ((<= 1 n 20)
                            (conv n))
                           ((<= 21 n 99)
                            (if (zerop (% n 10))
                                (conv n)
                              (+ (count (- n (% n 10)))
                                 (count (% n 10)))))
                           ((<= 100 n 999)
                            (+ (count (/ n 100))
                               (conv 100)
                               (count (% n 100))
                               (if (not (zerop (% n 100))) (length "and") 0)))
                           ((= n 1000)
                            (+ (conv 1) (conv n)))
                           (t 0))))
    (cl-loop for n from 1 to 1000
             sum (count n))))

;;; p017.el ends here
