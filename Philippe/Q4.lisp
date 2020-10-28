;; Version 1
(defun isBST (tree)
    "Evaluate if list is a BST tree"
    (if (/= 3 (length tree))
        t
        (let ((value (first tree)) (left (second tree)) (right (third tree)))
            (if (and left (> (first left) value))
                nil
                (if (and right (< (first right) value))
                    nil
                    (and (isBST left) (isBST right))
                )
            )
        )
    )
)

;; Version 2
(defun isBST (tree)
    "Evaluate if list is a BST tree"
    (if (/= 3 (length tree))
        t
        (let ((value (first tree)) (left (second tree)) (right (third tree)))
            (if (or (and left (> (first left) value)) (and right (< (first right) value)))
                nil
                (and (isBST left) (isBST right))
            )
        )
    )
)