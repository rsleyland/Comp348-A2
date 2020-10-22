(defun sub-list (lst from to)
    (let ((x to) (temp lst))
         (loop while (not (null (car temp))) do
            (setf x (- x 1)) (setf temp (cdr temp)))
         (if (> x 0) nil
    (if (or (> from to) (< from 1)) nil
    (if (> from 1) (sub-list (cdr lst) (- from 1) (- to 1))
        (if (<= from to) (cons (car lst) (sub-list (cdr lst) from (- to 1)))))))))
        
;(write (sub-list'(a b c d e) 1 2))
