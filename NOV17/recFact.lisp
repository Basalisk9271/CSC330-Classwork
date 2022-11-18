#!/usr/bin/sbcl --script 

;code found on https://stackoverflow.com/questions/47602677/recursive-factorial-function-in-common-lisp 

(defun factorial (n)
  (if (= n 1)              
      1                           
      (* n (factorial (- n 1))))) 

(write-line "Please enter a number...")
(finish-output)              ; this makes sure the text is printed now
(let ((x (read)))
 (format t "~D! is ~D" x (factorial x)))
(terpri)