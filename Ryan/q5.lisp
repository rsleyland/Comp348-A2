(defun split-list(lst)
    (let ((nl1 ())(nl2 ()))
         (loop while (> (length lst) (length nl1)) do
               (progn (setf nl1 (append nl1 (list(car lst))))
                (setf lst (cdr lst))))
         (loop while (not (null lst)) do
               (progn (setf nl2 (append nl2 (list(car lst))))
                (setf lst (cdr lst))))
         (list nl1 nl2)))
;(write (split-list '(a (b c) d  e (f g))))
