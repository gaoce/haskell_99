{-
(*) Find the last but one element of a list.

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [] = error "myButLast needs a list of at least two elements"
myButLast [x] = error "myButLast needs a list of at least two elements"
myButLast (x:_:[]) = x
myButLast (x:xs) = myButLast xs
