(defun is-bst(lst root)
    (cond ((null (car lst)) t)
          ((and (null (car (cdr lst))) (null (car(cdr (cdr lst))))) )
          ((and (null (car(cdr (cdr lst)))) (> (car (car (cdr lst))) (car lst))) nil)
          ((and (null (car (cdr lst))) (< (car(car (cdr (cdr lst)))) (car lst))) nil)
          ((and (not(null (car (cdr lst)))) (not(null (car(cdr (cdr lst))))) (< (car lst) root) (or (> (car (car (cdr (cdr lst)))) root) (> (car (car (cdr lst))) (car lst)) (< (car (car (cdr (cdr lst)))) (car lst)))) nil)
          ((and (not(null (car(cdr (cdr lst))))) (not(null (car(cdr lst)))) (> (car lst) root) (or (< (car (car (cdr lst))) root) (< (car (car (cdr (cdr lst)))) (car lst)) (> (car (car (cdr lst))) (car lst)))) nil)
          (t (and (is-bst (car (cdr lst)) root) (is-bst (car (cdr (cdr lst))) root)))))

(defun is-bst_(lst)
    (let ((root (car lst)))
     (is-bst lst root)))
    
;(write (is-bst_ '(8 (3 (1 (1) ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
