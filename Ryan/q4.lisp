(defun is-bst(lst root)
    (cond ((null (car lst)) t)
          ((and (null (second lst)) (null (third lst))) )
          ((and (null (second lst)) (< (car(third lst)) (car lst))) nil)
          ((and (null (third lst)) (> (car (second lst)) (car lst))) nil)
          ((and (not(null (second lst))) (not(null (third lst))) (< (car lst) root) (or (> (car(third lst)) root) (> (car(second lst)) (car lst)) (< (car (third lst)) (car lst)))) nil)
          ((and (not(null (car(third lst)))) (not(null (car(second lst)))) (> (car lst) root) (or (< (car (second lst)) root) (< (car (third lst)) (car lst)) (> (car (second lst)) (car lst)))) nil)
          (t (and (is-bst (second lst) root) (is-bst (third lst) root)))))

(defun is-bst_(lst)
    (let ((root (car lst)))
     (is-bst lst root)))
    
(write (is-bst_ '(8 (3 (1 (1) ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ())))))
