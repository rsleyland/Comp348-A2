(defun isBST (tree)
    "Evaluate if list is a BST tree"
    (cond 
        ((null tree) t)
        ((/= 3 (length tree)) nil)
        (t (let ((value (first tree)) (left (second tree)) (right (third tree)))
            (if (or (and left (> (first left) value)) (and right (< (first right) value)))
                nil
                (and (isBST left) (isBST right))
            )
        ))
    )
)
