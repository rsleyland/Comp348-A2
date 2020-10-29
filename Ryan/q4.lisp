(defun is-bst(lst)
    (cond
        ((null lst) t)
        ((and (numberp (car (car (cdr lst)))) (< (car lst) (car (car (cdr lst))))) nil)
        ((and (numberp (car(car (cdr (cdr lst))))) (>= (car lst) (car(car (cdr (cdr lst)))))) nil)
        (t (and (is-bst (car (cdr lst))) (is-bst (cdr (cdr lst)))))))

;(write (is-bst '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
