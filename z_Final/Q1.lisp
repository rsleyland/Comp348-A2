(defun sub-list(lst a b)
    (let ((x b) (y lst))
         (loop while (> x 1) do
               (setf y (cdr y))
               (setf x (- x 1)))
         (if (or (null y) (< a 1)) nil
    (cond 
        ((> a 1) (sub-list (cdr lst) (- a 1) (- b 1)))
        ((<= a b) (cons (car lst) (sub-list (cdr lst) a (- b 1))))))))
