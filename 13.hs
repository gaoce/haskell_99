{-
    (**) Run-length encoding of a list (direct solution).

    Implement the so-called run-length encoding data compression method directly.
    I.e. don't explicitly create the sublists containing the duplicates, as in
    problem 9, but only count them. As in problem P11, simplify the result list
    by replacing the singleton lists (1 X) by X.

    Example in Haskell:

    P13> encodeDirect "aaaabccaadeeee"
    [Multiple 4 'a',Single 'b',Multiple 2 'c',
     Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

data ListItem a = Multiple Int a | Single a deriving (Show)

count :: [a] -> ListItem a
count ls
    | length ls > 1 = Multiple (length ls) (head ls)
    | otherwise = Single (head ls)

encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs) = let (first, rest) = span (==x) xs in count (x:first) : encodeDirect rest
