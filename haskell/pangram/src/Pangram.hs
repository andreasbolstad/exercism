module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all containsLetter ['a' .. 'z']
  where
    loweredText = map toLower text
    containsLetter x = x `elem` loweredText
