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
    (reverse (lucas n)))