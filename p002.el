;;; p002.el --- Project Euler Problem 2.
;;
;; $Id: p002.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) フィボナッチ数列 1, 2, 3, 5, 8, ... の中から 400 万以下かつ偶数の項の和を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for n1 = 1 then n2
	 and n2 = 2 then (+ n1 n2)
	 while (<= n2 4000000)
	 if (cl-evenp n2)
	 sum n2)

;;; p002.el ends here
