module DNA (nucleotideCounts, Nucleotide(..)) where

import Data.Map (Map, fromList)
import Data.List (sort, group)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = Right . fromList . map getNucleotideAndLength . sortAndGroup

sortAndGroup :: String -> [String]
sortAndGroup = group . sort

getNucleotideAndLength :: String -> (Nucleotide, Int)
getNucleotideAndLength s = (toNucleotide $ head s, length s)

toNucleotide :: Char -> Nucleotide
toNucleotide c = case c of
  'A' -> A
  'C' -> C
  'G' -> G
  'T' -> T
  _ -> error "WTF"

