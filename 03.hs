{-
(*) Find the K'th element of a list. The first element in the list is number 1.

Example in Haskell:

Prelude> elementAt [1,2,3] 2
2
Prelude> elementAt "haskell" 5
'e'
-}

elementAt :: [a] -> Int -> a
elementAt [] n = error "Invalid list"
elementAt (x:xs) 1 = x
elementAt ls n
    | n <= 0 = error "Invalid number"
    | otherwise = elementAt (tail ls) (n-1) 

