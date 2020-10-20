; question 5
; Finds the two halves of the list;

; split
; attach the first (n-1)/2 heads to make the first half
; then the cdr becomes the second half

(defun split (lst)
    (setq half_length (floor (+ (list-length lst) 1 ) 2))
    (setq half1 ())
    (setq lst1 lst)
    (dotimes (n half_length)
        (setf half1 (append half1 (list (car lst1)) ))
        (setf lst1 (cdr lst1)))
   (list half1 lst1))

;(print (split '(1 2 3 4)))
;(print (split '(1 2 3 4 5)))
;(print (split '(1 (2 3) 4 5 6)))