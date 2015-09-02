{-
(*) Remove the K'th element from a list.

Example in Haskell:

*Main> removeAt 2 "abcd"
('b',"acd")
-}

removeAt :: Int -> [a] -> (a, [a])
removeAt n xs
    | n > 0 = let first = take (n-1) xs
                  rest = drop n xs
                  in (xs !! (n-1), first ++ rest)
