;;; p001.el --- Project Euler Problem 1.
;;
;; $Id: p001.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 1, 2, 3, ..., 999 の中から 3 または 5 の倍数の和を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop for n from 1 to 999
         if (or (zerop (% n 3))
                (zerop (% n 5)))
         sum n)

;;; p001.el ends here
