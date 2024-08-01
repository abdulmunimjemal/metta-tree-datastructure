; Implement a function to check if a symbol is inside a tree. If it exists, it should return true or else it should return false.’

; ! (get-metatype A)

; (: find-symbol -> (Tree Symbol Bool))
(= (find-symbol $tree $symbol)
    (
        case $tree (
            (NilTree False)
            (
            (Node $sym $left $right) 
              (if (== $sym $symbol)
              True
              (or (find-symbol $left $symbol) (find-symbol $right $symbol))
              )
            )
        )
    )
)

!(find-symbol (Node A NilTree (Node B NilTree NilTree)) A) ; True
!(find-symbol (Node A NilTree (Node B NilTree NilTree)) B) ; True
!(find-symbol (Node A NilTree (Node D NilTree NilTree)) C) ; False

