(defun triangle (size)
    "print triangle"
    (setf goal (abs size))
    (loop for i from 1 to goal
        collect (cond ((>= size 0)
                        (loop for y from 1 to goal
                                if (<= (+ y i) (+ goal 1))
                                do (format t "*")
                                else do (format t " ")
                        )
                        )
                    (t (loop for y from goal downto 1
                            if (<= (+ y i) (+ goal 1))
                            do (format t "*")
                            else do (format t " ")
                        )
                    )
                )
        do (format t "~%")
    )
)