
; (: count-symbol -> (Tree Symbol Number))
(= (count-symbol $tree $symbol)
    (
        case $tree (
            (NilTree 0)
            (
              (Node $sym $left $right) 
              (if (== $sym $symbol)
                  (+ 1 (+ (count-symbol $left $symbol) (count-symbol $right $symbol)))
                  (+ (count-symbol $left $symbol) (count-symbol $right $symbol))
              )
            )
        )
    )
)

!(count-symbol (Node A NilTree (Node B (Node A NilTree (Node A NilTree NilTree)) NilTree)) A) ; 3
!(count-symbol (Node A NilTree (Node B NilTree NilTree)) B) ; 1
!(count-symbol (Node A NilTree (Node D NilTree NilTree)) C) ; 0
!(count-symbol NilTree C) ; 0

