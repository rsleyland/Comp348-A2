(defun lucas_(n) 
    (cond
        ((or (not (integerp n)) (< n 0)) nil) ;lucas[0] = 2 & lucas[1] = 1
        ((= n 0) (list 2))
        ((= n 1) (list 1 2))
        (t (cons (+ (car (lucas_ (1- n))) (cadr (lucas_ (1- n)))) (lucas_ (1- n))))))

(defun lucas(n)
    (reverse (lucas_ n)))

;(write (lucas 10))
