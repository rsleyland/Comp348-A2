(defun sublist (lst &optional (a 1) (b (list-length lst)))
    (cond
        ((null a) (sublist lst 1 b))                    ;nil causes error
        ((null lst) ())                                 ;condition 1: if the list is empty
        ((> a b) (reverse (sublist lst b a)))           ;condition 2: start index is greater
        ((or (minusp a) (minusp b)) ())                 ;condition 3: one of the indexes are negative
        ((or (equal a 0) (> b (list-length lst))) ())   ;condition 4: a = 0 or b is out of bounds
        ((and (equal b 0) (equal a 1)) ())              ;recursive end case: when b becomes 0
        ((equal a 1) (cons (car lst) (sublist (cdr lst) a (- b 1))))    ;recursive: we reach start index
        (t (sublist (cdr lst) (- a 1) (- b 1)))))       ;recursive: neither indexes are reached, so decrement

;(print (sublist '(1 2 3 4 5 6) 2 3))
;(print (sublist '(1 2 3 4 5 6) 1 6))
;(print (sublist '(1 2 3 4 5 6) 0 3))
;(print (sublist '(1 2 3 4 5 6) 5 2))
;(print (sublist '(1 2 3 4 5 6) -1 2))
;(print (sublist '(1 2 3 4 5 6) 2 10))
;(print (sublist '(1 2 3 4 5 6)))
;(print (sublist '(1 2 3 4 5 6) 3))
;(print (sublist '(1 2 3 4 5 6) nil 4))