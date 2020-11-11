(defun flatten(lst)
    (cond
        ((or (not (listp lst)) (null lst)) nil)
        ((listp (car lst)) (append (flatten (car lst)) (flatten (cdr lst))))
        ((numberp (car lst)) (remove-dupes (reverse (cons (car lst) (flatten (cdr lst))))))
        (t (flatten (cdr lst)))))

(defun remove-dupes(lst)
    (cond
        ((null lst) nil)
        ((member (car lst) (cdr lst)) (remove-dupes(cdr lst)))
        (t (append (remove-dupes (cdr lst)) (list(car lst))))))

;(write (flatten '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2)))))
