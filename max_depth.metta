; Example Tree
; (Tree Left Right)
(Node 1 (Node 2 NilTree NilTree) (Node 3 NilTree NilTree)) 
; (Node 1 NilTree (Node 2 NilTree NilTree))

(: max -> (Number Number Number))
(= (max $number1 $number2)
   (if (> $number1 $number2) $number1 $number2)
)


(= (max-depth $tree)
    (case $tree (
        (NilTree 0)
        (
            (Node $val $left $right)
            (+ 1 (max (max-depth $left) (max-depth $right)))
        )
        ($_ ERROR)
        )

    )
)

! (max-depth (Node 1 (Node 2 (Node 4 NilTree NilTree) NilTree) (Node 3 NilTree NilTree)) ) ; 3
! (max-depth (Node 1 (Node 2 NilTree NilTree) NilTree) ) ; 2