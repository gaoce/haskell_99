{-
    (*) Modified run-length encoding.

    Modify the result of problem 10 in such a way that if an element has no
    duplicates it is simply copied into the result list. Only elements with
    duplicates are transferred as (N E) lists.

    Example in Haskell:

    ghci> encodeModified "aaaabccaadeeee"
    [Multiple 4 'a', Single 'b', Multiple 2 'c',
     Multiple 2 'a', Single 'd', Multiple 4 'e']
-}

import Data.List

data Item a = Multiple Int a | Single a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Item a]
encodeModified = map (\x -> if length x > 1 then Multiple (length x) (head x) else Single (head x)) . group
