module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | all isSpace xs = "Fine. Be that way!"
  | allLettersUppercase xs && isQuestion xs = "Calm down, I know what I'm doing!"
  | allLettersUppercase xs = "Whoa, chill out!"
  | isQuestion xs = "Sure."
  | otherwise = "Whatever."
  where
    allLettersUppercase s = any isAlpha s && all isUpper (filter isAlpha s)
    isQuestion s = last (whitespaceStripped s) == '?'
    whitespaceStripped = filter (not . isSpace)
