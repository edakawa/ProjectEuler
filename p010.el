;;; p010.el --- Project Euler Problem 10.
;;
;; $Id: p010.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 200 万以下の素数 2, 3, 5, 7, ... の和を求める
;;

;;; Code:

(require 'cl-lib)

(let* ((upper (1+ 2000000))
       (sieve (make-bool-vector upper t)))
  (cl-flet ((rem (n) (cl-loop for i from (+ n n) to (1- upper) by n do (aset sieve i nil))))
    (rem 2)
    (cl-loop for i from 3 to (sqrt upper) by 2 when (aref sieve i) do (rem i))
    (cl-loop for i from 2 to (1- upper) when (aref sieve i) sum i)))

;;; p010.el ends here
