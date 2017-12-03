module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram [] = False
isPangram text = foldl (\acc x -> acc && x `elem` onlyChar text) True ['a'..'z']
    where onlyChar xs = filter (\x -> x `elem` ['a'..'z']) $ toLower2 xs
          toLower2 xs = map (\x -> toLower x) xs