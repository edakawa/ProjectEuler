;;; p003.el --- Project Euler Problem 3.
;;
;; $Id: p003.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 600851475143 の素因数の中から最大の素因数を求める
;;

;;; Code:

(require 'cl-lib)

(cl-loop with n = 600851475143
         for i from 2 to (sqrt n)
         if (zerop (% n i)) maximize i into m
         do (cl-loop while (zerop (% n i)) do (setq n (/ n i)))
         finally return (max n (if m m 0)))

;;; p003.el ends here
