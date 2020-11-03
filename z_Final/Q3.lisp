(defun flat (lst)
    "flatten a list of many type"
    (setf x nil)
    (loop for y in lst
            if (listp y)
            do (setf x (append x (flatten-numbers y)))
            if (numberp y)
            do (setf x (cond ((not x) (list y))
                                (t (append x (list y))))
            )
            finally (return x)
          )
)

(defun flatten-numbers (lst)
    (setf flst (flat lst))
    (setf nlst (list (first flst)))
    (loop for i in flst
            when (not (find i nlst))
            do (setf nlst (append nlst (list i)))
            finally (return nlst)
            )
)
