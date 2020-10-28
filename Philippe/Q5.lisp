(defun split (lst)
    "split the list in two"
    (setf half (ceiling (/ (length lst) 2)))
    (loop for x in lst
        for i from 1

        if (>= half i)
            collect x into lst1
        else
            collect x into lst2
        finally (return (list lst1 lst2))
        )
    )