(defun split-list(lst)
    (let ((nl1 ())(nl2 ()))
         (loop while (> (length lst) (length nl1)) do
               (if (null (car lst)) (setf lst (cdr lst))
               (progn (setf nl1 (append nl1 (list(car lst))))
                (setf lst (cdr lst)))))
         (loop while (not (null lst)) do
               (if (null (car lst)) (setf lst (cdr lst))
               (progn (setf nl2 (append nl2 (list(car lst))))
               (setf lst (cdr lst)))))
         (list nl1 nl2)))
;(write (split-list '(1 (2 3) 4 5 6)))
