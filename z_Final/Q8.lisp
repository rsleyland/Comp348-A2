(defun lucas (n)
    (cond
        ((zerop n) ())
        ((= n 1) '(2))
        ((= n 2) '(1 2))
        (t  
            (cons 
                (+ (car (cdr (lucas (- n 1)))) (car (lucas (- n 1))))
                (lucas (- n 1))))))

(defun lucasNum (n)
    (cond
        ((not (numberp n)) (format t "Error. Not defined for non-number inputs."))
        ((not (integerp n)) (format t "Error. Not defined for floating point inputs."))
        ((< n 0) (format t "Error. Not defined for negative numbers.")) 
        (t (reverse (lucas n)))))
