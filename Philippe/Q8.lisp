(defun lucas (size)
    "Reverse Lucas list creator"
    (cond ((= size 0) ())
        ((= size 1) '(2))
        ((= size 2) '(1 2))
        (t (let ((x (lucas (- size 1))))
                (setf x1 (first x))
                (setf x2 (second x))
                (append (list (+ x1 x2)) x)
            )
        )
    )
)

(defun lucas-list (size)
    "lucas list creator"
    (reverse (lucas size))
)
