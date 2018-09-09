;;; p015.el --- Project Euler Problem 15.
;;
;; $Id: p015.el,v 1.1 2018/09/09 04:59:46 hajime Exp $
;;
;; Author: Hajime EDAKAWA <hajime.edakawa@gmail.com>
;; License: Public Domain
;;

;;; Commentary:
;;
;; (問題要約) 20x20 のマス目ルートを引き返しなしのルートで進むときのパターン数を求める
;;

;;; Code:

(defvar *grid* (make-list (* (1+ 20) (1+ 20)) 0))

(cl-flet ((putgrid (x y n) (setf (nth (+ (* y 21) x) *grid*) n))
          (getgrid (x y) (nth (+ (* y 21) x) *grid*)))
  (cl-loop for i from 1 to 20
           do (progn
                (putgrid i 0 1)
                (putgrid 0 i 1)))
  (cl-loop for x from 1 to 20
           do (cl-loop for y from 1 to 20
                       do (putgrid x y (+ (getgrid x (1- y))
                                          (getgrid (1- x) y)))))
  (getgrid 20 20))

;;; p015.el ends here
