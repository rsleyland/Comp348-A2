(defun sub-list2(lst &optional (a 1) (b (list-length lst)))
        (if (eql a nil) (setf a b))     ;added these two if statements to deal with (sub-list '(1 6 12) nil 1) --> (1)
        (if (eql b nil) (setf b a))
        (if (or (< b 1) (< a 1) (> b (list-length lst))) nil
    (cond 
        ((> a b) (progn (setf temp a) (setf a b) (setf b temp) (setf lst (reverse lst)) (sub-list2 lst a b)))
        ((> a 1) (sub-list2 (cdr lst) (- a 1) (- b 1)))
        ((<= a b) (cons (car lst) (sub-list2 (cdr lst) a (- b 1)))))))

;(write (sub-list2 '(a b c d) 1 2))
