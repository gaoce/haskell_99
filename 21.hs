{-
    Insert an element at a given position into a list.
    
    Example in Haskell:
    
    P21> insertAt 'X' "abcd" 2
    "aXbcd"
-}

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = let (front, end) = splitAt (n-1) xs in front ++ x:end
