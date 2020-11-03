(defun split (lst)
    (if (not (listp lst))
        nil
        (progn
            (setq half_length (floor (+ (list-length lst) 1 ) 2))
            (setq half1 ())
            (setq lst1 lst)
            (dotimes (n half_length)
                (setf half1 (append half1 (list (car lst1)) ))
                (setf lst1 (cdr lst1)))
           (list half1 lst1))))
