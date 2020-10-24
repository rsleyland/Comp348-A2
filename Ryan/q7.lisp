(defun triangle-left (input)
    (cond ((> input 1) (progn (let ((n input)) (loop while (> n 0) do (princ "*") (setf n (- n 1)))) (terpri) (triangle-left (- input 1))))
           (t (princ "*"))))

(defun triangle-right (input)
    (let ((x input))
         (loop while (< x 0) do
               (dotimes (a (- x input))
                     (princ " "))
                (dotimes (a (abs x))
                     (princ "*"))
               (terpri)
               (setf x (+ x 1)))))

(defun triangle (num)
    (if (or (not (integerp num)) (zerop num)) (princ "Error message - input is invalid!")
    (cond ((>= num 1) (triangle-left num));;run left alignment
          ((< num 0) (triangle-right num));run right alignment
        )))

;(triangle -5)(terpri)
;(triangle 5)
