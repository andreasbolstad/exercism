module CollatzConjecture (collatz) where
import Data.List (genericLength)

collatz :: Integer -> Maybe Integer
collatz n 
  | n <= 0 = Nothing 
  | otherwise = Just (genericLength (collatzSeq n) - 1)

collatzSeq :: Integer -> [Integer]
collatzSeq n 
  | n == 1 = [n]
  | otherwise = n : collatzSeq (collatzStep n) 

collatzStep :: Integer -> Integer
collatzStep n
  | even n = n `div` 2
  | otherwise = 3*n+1
