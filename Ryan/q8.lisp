(defun lucas_ (n)
    (cond ((< n 1) '())
          ((= n 1) '(2))
          ((= n 2) '(1 2))
          (t (cons (+ (car(lucas_ (- n 1))) (cadr(lucas_ (- n 1)))) (lucas_ (- n 1))))))
(defun lucas (n)
    (reverse (lucas_ n)))
     
;(write (lucas 6))
