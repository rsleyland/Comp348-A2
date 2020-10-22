(defun is-bst(lst)
    (if (null lst) t
    (cond ((or (null (car (cdr lst))) (null (car (cdr (cdr lst)))))  )
          ((or (< (car lst) (car (car (cdr lst)))) (> (car lst) (car (car (cdr (cdr lst)))))) nil)
          (t (progn (is-Bin-Tree (car (cdr lst))) (is-Bin-Tree (car (cdr (cdr lst)))))))))

;(write (is-Bin-Tree '(8 (5 (4) (7)) (11 (9) (12)))))
