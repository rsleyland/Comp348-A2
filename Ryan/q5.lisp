(defun split (lst)
    (if (not (listp lst)) nil
    (let ((lst1 ()))
         (loop while (< (length lst1) (length lst)) do
               (setf lst1 (append lst1 (list (car lst))))
               (setf lst (cdr lst)))
         (list lst1 lst))))

;(write (split '(1 (2 3) 4 5 6)))
