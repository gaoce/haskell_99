{-
    (**) Replicate the elements of a list a given number of times.
    
    Example in Haskell:
    
    > repli "abc" 3
    "aaabbbccc"
-}

repli :: [a] -> Int -> [a]
repli x n = concatMap (replicate n) x 
