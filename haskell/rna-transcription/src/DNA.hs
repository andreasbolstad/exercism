module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA = traverse dnaToRnaLetter
  where
    dnaToRnaLetter :: Char -> Either Char Char
    dnaToRnaLetter c = case c of 
      'G' -> pure 'C'
      'C' -> pure 'G'
      'T' -> pure 'A'
      'A' -> pure 'U'
      _ -> Left c
