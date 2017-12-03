module DNA (nucleotideCounts) where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.List

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts x
    | invalid x == True = Left "Incorrect nucleotide"
    | x == "" = Right empty
    | otherwise = Right $ Data.List.foldl (\agg x -> Map.insert x (agg Map.! x + 1) agg) empty x where 
        valid = all (\x -> x == 'A' || x == 'C' || x == 'G' || x == 'T')
        invalid = not . valid
        empty = Map.fromList [('A',0),('C',0),('G',0),('T',0)]
