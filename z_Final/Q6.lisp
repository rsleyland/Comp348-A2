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
         

;; Another way but with an optional as argument don't know if it's allowed
(defun make-cbtree (lst &optional (position 1))
    (cond ((< position 1) nil)
        ((> position (length lst)) ())
        (t (progn
            (setf sublist lst)
            (loop for i from 2 to position
                do (setf sublist (cdr sublist)))
            (cons (first sublist) (list (make-cbtree lst (* position 2)) (make-cbtree lst (+ (* position 2) 1) )))
        ))
    )
)
