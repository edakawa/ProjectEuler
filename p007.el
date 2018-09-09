;;; p007.el --- Project Euler Problem 7.
;;
;; $Id: p007.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 10001 番目の素数を求める
;;

;;; Code:

(require 'cl-lib)

(cl-flet ((prime-p (n) (cl-loop for d from 2 to (sqrt n) never (zerop (% n d)))))
  (cl-loop for n from 3 by 2
           count (prime-p n) into c
           when (= c 10000)
           return n))

;;; p007.el ends here
