;;; p006.el --- Project Euler Problem 6.
;;
;; $Id: p006.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) (1 + 2 + 3 + ... + 100)^2 - (1^2 + 2^2 + 3^2 + ... + 100^2) の差を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for i from 1 to 100
         sum i into s1
         sum (expt i 2) into s2
         finally return (- (expt s1 2) s2))

;;; p006.el ends here
