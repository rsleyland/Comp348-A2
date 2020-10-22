(defun is-bst(lst)
    (if (null lst) t
    (cond ((and (null (car (cdr lst))) (null (car (cdr (cdr lst))))) )
          ((< (car lst) (car (car (cdr lst)))) nil)
          ((> (car lst)  (car (car (cdr (cdr lst))))) nil)
          (t (progn (and (is-bst (car (cdr lst))) (is-bst (car (cdr (cdr lst))))))))))

(write (is-bst '(8 (4 (3) (8)) (11 (7) (12)))))
