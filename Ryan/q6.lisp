(defun make-cbtree(lst)
    (if (or (null lst) (not (numberp (car lst)))) nil
        (progn
            (setq tree (list (car lst) () ()))
            (setf lst (cdr lst))
            (loop while (not (null lst)) do
                  (add-node (car lst) tree)
                  (setf lst (cdr lst)))
            tree)))
    
(defun add-node(node tree)
     (cond
         ((not (numberp node)) nil)
         ((<= node (car tree)) (if (null (car (cdr tree))) (setf (car (cdr tree)) (list node () ())) (add-node node (car (cdr tree))))) 
         ((> node (car tree)) (if (null (car(cdr (cdr tree)))) (setf (car(cdr (cdr tree))) (list node () () )) (add-node node (car(cdr (cdr tree))))))))
                  
;(write (make-cbtree '(8 3 10 1)))
