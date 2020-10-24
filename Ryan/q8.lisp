(defun lucas_ (n)
    (cond ((< n 1) '())
          ((= n 1) '(2))
          ((= n 2) '(1 2))
          (t (cons (+ (second(lucas_ (- n 1))) (first(lucas_ (- n 1)))) (lucas_ (- n 1))))))
(defun lucas (n)
    (reverse (lucas_ n)))
     
;(write (lucas 6))
