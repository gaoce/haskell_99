{- Problem
(*) Find the last element of a list.

Example in Haskell:

Prelude> myLast [1,2,3,4]
4
Prelude> myLast ['x','y','z']
'z'
-}

myLast :: [a] -> a
myLast [] = error "myLast does not work on empty list!"
myLast [x] = x
myLast (x:xs) = myLast xs
