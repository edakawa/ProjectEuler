;;; p014.el --- Project Euler Problem 14.
;;
;; $Id: p014.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 100 万未満の数から生成されるコラッツ数列の中から、最長の数列を生成する数を求める
;;

;;; Code:

(require 'cl-lib)

(let ((max-lisp-eval-depth (* 600 3))      ; 600 は max-lisp-eval-depth のデフォルト値
      (max-specpdl-size (* 1300 2))        ; 1300 は max-specpdl-size のデフォルト値
      (gc-cons-threshold (* 800000 1000))  ; 800000 は gc-cons-threshold のデフォルト値
      (cht (make-hash-table))
      (lht (make-hash-table)))
  (cl-labels ((collatz (n)
                       (if (gethash n cht)
                           (gethash n cht)
                         (puthash n (cons n (collatz (if (cl-evenp n) (/ n 2) (1+ (* 3 n))))) cht))))
    (puthash 2 '(2 1) cht)
    (gethash (cl-loop for x from 3 to 999999
                      for len = (length (collatz x))
                      do (puthash len x lht)
                      maximize len)
             lht)))

;;; p014.el ends here
