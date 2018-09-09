;;; p004.el --- Project Euler Problem 4.
;;
;; $Id: p004.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 3 桁の数の積の組合せの中から最大の回文数を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for num in (cl-loop for x from 100 to 999
                             append (cl-loop for y from x to 999 collect (* x y)))
         maximize (cl-loop for n = num then (/ n 10)
                           and r = 0 then (+ (* r 10) (% n 10))
                           while (> n 0)
                           finally return (if (= r num) r 0)))

;;; p004.el ends here
