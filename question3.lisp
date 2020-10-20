; question 3
;
; base case: if list is null, return null.
; recursive case:   1) if element is an atom, do the operation on it recursively
;                   2) otherwise attach the head to the recursive operation on the tail

(defun straight (lst)

    (cond

        ((null lst) ())

        ((listp (car lst)) (append (straight (car lst)) (straight (cdr lst))))

        (t (cons (car lst) (straight (cdr lst))))))

; (print (straight '(1 (1 2 3) b (4 (3 2)))))