;;; p012.el --- Project Euler Problem 12.
;;
;; $Id: p012.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 約数の個数が 500 より多い最初の三角数を求める
;;

;;; Code:

(require 'cl-lib)
(require 'profile)

(cl-flet ((factor (n) (cl-loop for i from 2 to (sqrt n)
                               when (zerop (% n i))
                               collect (cl-loop do (setq n (/ n i))
                                                collect i into ret
                                                while (zerop (% n i))
                                                finally return ret) into ret
                               finally return (if (> n 1) (append ret (list (list n))) ret))))
  (cl-loop for x from 1
           sum x into total
           for len = (cl-loop for lst in (factor total)
                              collect (1+ (length lst)) into ret
                              finally return (apply #'* ret))
           when (> len 500)
           return total))

;;; p012.el ends here
