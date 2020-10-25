; question 3
;
; base case: if list is null, return null.
; recursive case:   1) if element is an atom, do the operation on it recursively
;                   2) otherwise attach the head to the recursive operation on the tail

(defun straight (lst)
    (cond
        ((null lst) ())
        ((listp (car lst)) (append (straight (car lst)) (straight (cdr lst))))
        (t 
            (setq duplicates nil)
            (remove_dup (cons (car lst) (straight (cdr lst)))))))

(defun remove_dup (lst)
    (cond
        ((null lst) nil)
        ((member (car lst) duplicates) (remove_dup (cdr lst)))
        ((member (car lst) (cdr lst)) 
            (setq duplicates (cons (car lst) duplicates))
            (cons (car lst) (remove_dup (cdr lst))))
        (t (cons (car lst) (remove_dup (cdr lst))))))

;(print (straight '(1 (1 2 3) b (4 (3 2)))))
