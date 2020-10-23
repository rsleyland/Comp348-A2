(defun sub-list(lst &optional (a 1) (b (list-length lst)))
        (if (and (eql a nil) (eql b nil)) (progn (setf a 0) (setf b 0)))
        (if (eql a nil) (setf a b))
        (if (eql b nil) (setf b a))
        (if (or (< b 1) (< a 1) (> b (list-length lst)) ) nil
    (cond 
        ((> a b) (progn 
                     (setq tempa a) (setq tempb b) (setf b (+ tempa 1 (- (length lst) tempa tempb))) (setf a (+ tempb 1 (- (length lst) tempa tempb)))
                     (setf lst (reverse lst)) (sub-list lst a b)))
        ((> a 1) (sub-list (cdr lst) (- a 1) (- b 1)))
        ((<= a b) (cons (car lst) (sub-list (cdr lst) a (- b 1)))))))


;(write (sub-list '(1 6 12 15 16) 6 1))
