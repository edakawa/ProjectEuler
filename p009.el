;;; p009.el --- Project Euler Problem 9.
;;
;; $Id: p009.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) a^2 + b^2 = c^2 かつ a + b + c = 1000 (a < b < c) となる a、b、c の積を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop named found for a from 1
	 do (cl-loop for b from (1+ a)
		     for c = (sqrt (+ (expt a 2) (expt b 2)))
		     while (<= (+ a b c) 1000.0)
		     do (when (= (+ a b c) 1000.0)
			  (return-from found (truncate (* a b c))))))

;;; p009.el ends here
