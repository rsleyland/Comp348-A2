(defun is-bst(lst)
    (cond ((null lst) t)
          ((and (not(null (car (cdr lst)))) (> (car (car (cdr lst))) (car lst))) nil)
          ((and (not(null (car(cdr (cdr lst))))) (< (car (car (cdr (cdr lst)))) (car lst))) nil)
          (t (and (is-bst (car (cdr lst))) (is-bst (car (cdr (cdr lst))))))))


;(write (is-bst '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
