{-
    (**) Drop every N'th element from a list.
    
    Example in Haskell:
    
    *Main> dropEvery "abcdefghik" 3
    "abdeghk"
-}

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs n = drop $ splitAt (n-1) xs
    where drop (first, rest)
            | length rest > 0 = first ++ dropEvery (tail rest) n
            | otherwise = first
