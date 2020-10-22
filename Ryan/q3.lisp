(defun flatten(lst)
    (if (null lst) nil
        (cond ((listp (car lst)) (append (flatten (car lst)) (flatten (cdr lst))))
              ((not (numberp (car lst))) (flatten (cdr lst)))
              (t (append (cons (car lst) (flatten (cdr lst))))))))
;(write(flatten '(1 2 (3 1) (a 2.5) ((1 2)))))

;NEED TO REMOVE DUPLICATES
