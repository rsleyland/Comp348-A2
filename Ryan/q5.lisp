(defun split (lst)
    (if (not (listp lst)) nil
    (let ((lst1 ()) (lst2 lst))
         (loop while (< (length lst1) (length lst2)) do
               (setf lst1 (append lst1 (list (car lst2))))
               (setf lst2 (cdr lst2)))
         (list lst1 lst2))))

;(write (split '(1 (2 3) 4 5 6)))
