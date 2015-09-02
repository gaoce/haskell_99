{-
    (*) Split a list into two parts; the length of the first part is given.

    Do not use any predefined predicates.

    Example in Haskell:

    *Main> split "abcdefghik" 3
    ("abc", "defghik")
-}

split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split xs 0 = ([], xs)
split l@(x:xs) n 
    | n > 0     = (x:first, rest)
    | otherwise = ([], l)
    where (first, rest) = split xs (n-1)
