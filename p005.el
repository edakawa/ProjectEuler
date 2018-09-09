;;; p005.el --- Project Euler Problem 5.
;;
;; $Id: p005.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 1, 2, 3, ..., 20 の最小公倍数を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for i from 1 to 20
         collect i into num
         finally return (apply #'lcm num))

;;; p005.el ends here
