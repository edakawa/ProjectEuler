;;; p016.el --- Project Euler Problem 16.
;;
;; $Id: p016.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 2^1000 の各桁の和を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for ch across (calc-eval "2^1000")
         sum (string-to-number (byte-to-string ch)))

;;; p016.el ends here
