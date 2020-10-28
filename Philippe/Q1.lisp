(defun sub-list (lst from to)
    "Return a sublist of the list from to"
    (if (or (< from 1) (> to (length lst)))
        nil
        (sub lst from to)
        )
)

(defun sub (lst from to)
    ""
    (setf nloop (- (length lst) to))
    (loop for i from 1 to (- from 1)
        do (setf lst (cdr lst))
        )
    (setf lst (reverse lst))
    (loop for i from 1 to nloop
        do (setf lst (cdr lst))
        )
    (reverse lst)
    )