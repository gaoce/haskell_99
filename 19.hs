{-
    (**) Rotate a list N places to the left.
    
    Hint: Use the predefined functions length and (++).
    
    Examples in Haskell:
    
    *Main> rotate ['a','b','c','d','e','f','g','h'] 3
    "defghabc"
     
    *Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
    "ghabcdef"
-}
-- import Data.List

rotate :: [a] -> Int -> [a]
rotate xs n
    | n > 0 && n <= len    = let (first, rest) = splitAt n xs in rest ++ first
    | n < 0 && (-n) <= len = let (first, rest) = splitAt (len + n) xs in rest ++ first
    where len = length xs
