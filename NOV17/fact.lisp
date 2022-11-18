#!/usr/bin/sbcl --script 

(defun factorial (n) 
    "Calculates N!" 
        (loop for result = 1 then (* result i) 
                for i from 2 to n 
                    finally (return result))) 

(write (factorial 100000)) 
(terpri)