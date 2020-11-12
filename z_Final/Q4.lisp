; Algorithm
; Check head and compare it to the left and right.
; Recurse on left child then right
; base case: reaches the end (both children are null) return true
; base case: equality fails, return false

(defun binary_search_tree (tree)
    (cond
        ((null tree) t)             ;if empty tree, then it is technically a binary search tree
        ((not (is_tree tree)) nil)  ;error if not a binary tree
        ((is_leaf tree) t)          ;if we reached a leaf node, return true
        ((and
            (or (null (second tree)) (<= (car (second tree)) (car tree)) )     ;left child less than or equal to root or is empty
            (or (null (third tree)) (> (car (third tree)) (car tree)) ))  ; right child greater than root or is empty
            (and (binary_search_tree (second tree)) (binary_search_tree (third tree)) ;both true, do recursion
                (apply #'>= (car tree) (sort (straight (second tree)) #'>=))    ;makes sure left tree is smaller than or equal to root
                (apply #'<= (car tree) (sort (straight (third tree)) #'<))))))  ;makes sure right tree is greater than root

; a function to check if it is actually a binary tree
(defun is_tree (tree)
    (cond
        ((equal 3 (list-length tree)) t)
        (t nil)))

; a function to check if it is a leaf node
(defun is_leaf (node)
    (cond
        ((and (null (second node)) (null (third node))) t)
        (t nil)))

; straighten list from question 3
(defun straight (lst)
    (cond
        ((null lst) ())
        ((listp (car lst)) (append (straight (car lst)) (straight (cdr lst))))
        (t (cons (car lst) (straight (cdr lst))))))

;(print (binary_search_tree '(1 () ())))
;(print (binary_search_tree '(1 () () ())))
;(print (binary_search_tree '()))
;(print (binary_search_tree '(1 (1 () ()) (3 () ()))))
;(print (binary_search_tree '(1 (2 () ()) (3 () ()))))
;(print (binary_search_tree '(8 (3 (1 () ()) (6 (4 () ())(7 () ()))) (10 () (14 (13 () ()) ()))) ))
;(print (binary_search_tree '(3 (1 () (10 () ())) ())))
