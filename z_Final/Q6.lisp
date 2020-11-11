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
