{-
    (**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
    
    Example in Haskell:
    
    *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
    ["aaaa","b","cc","aa","d","eeee"]
-}

import Data.List

pack :: (Eq a) => [a] -> [[a]]
pack (x:xs) = let (first, rest) = span (==x) xs
                in (x:first) : pack rest
pack [] = []
