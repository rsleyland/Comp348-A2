(defun sub-list2(lst &optional (a 1) (b (list-length lst)))
        (if (and (eql a nil) (eql b nil)) (progn (setf a 0) (setf b 0)))
        (if (eql a nil) (setf a b))
        (if (eql b nil) (setf b a))
        (if (or (< b 1) (< a 1) (> b (list-length lst)) ) nil
    (cond 
        ((> a b) (progn 
                     (setq temp a) (setf a (+ b (- (length lst) temp))) (setf b (+ temp (- (length lst) temp) )) 
                     (setf lst (reverse lst)) (sub-list2 lst a b)))
        ((> a 1) (sub-list2 (cdr lst) (- a 1) (- b 1)))
        ((<= a b) (cons (car lst) (sub-list2 (cdr lst) a (- b 1)))))))

;(write (sub-list2 '(a b c d) 1 2))
