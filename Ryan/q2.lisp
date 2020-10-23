(defun sub-list2(lst &optional (a 1) (b (list-length lst)))
        (if (or (< b 1) (< a 1) (> b (list-length lst))) nil
    (cond 
        ((> a b) (progn (setq temp a) (setq a b) (setq b temp) (sub-list2 lst a b)))
        ((> a 1) (sub-list2 (cdr lst) (- a 1) (- b 1)))
        ((<= a b) (cons (car lst) (sub-list2 (cdr lst) a (- b 1)))))))

;(write (sub-list2 '(a b c d) 1 2))

;need to add 
;(sub-list '(1 6 12) nil 1)
