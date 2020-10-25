(defun triangle (n)
    (cond
        ((not (numberp n)) (format t "error, n must be a number"))      ; checks for number
        ((zerop n) (format t "error, n must not be zero"))              ; checks for 0
        ((not (integerp n)) (format t "error, n must be an integer"))   ; checks for non-int
        (t (private_triangle n n))))                                    ; calls main function

(defun private_triangle (init curr)                 ; init = original num, curr = current num
    (cond
        ((zerop curr) )                             ; terminates if zero
        ((plusp curr)
            (dotimes (i curr)                       ; prints *
                (write '*))
            (terpri)                                ; new line
            (private_triangle init (- curr 1)))     ; does recursion while decrementing curr (I dislike loops in Lisp)
        (t 
            (dotimes (i (- curr init))              ; prints the spaces
                (format t " "))
            (dotimes (i (abs curr))                 ; prints *
                (write '*))
            (terpri)                                ; new line
            (private_triangle init (+ curr 1)))))   ; recursion (No seriously, the loops are annoying.)
        

;(triangle 4)
;(triangle -4)
;(triangle 1.5)
;(triangle 'hello)
;(triangle "hello")
;(triangle 0)
;(triangle 10)
;(triangle -10)
;(triangle 1)
;(triangle -1)