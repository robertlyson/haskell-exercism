module DNA (toRNA) where

import Data.Maybe

toRNA :: String -> Maybe String
toRNA [] = Nothing
toRNA text = mapM dnaNucleotideToRna text

dnaNucleotideToRna :: Char -> Maybe Char
dnaNucleotideToRna 'G' = Just 'C'
dnaNucleotideToRna 'C' = Just 'G'
dnaNucleotideToRna 'T' = Just 'A'
dnaNucleotideToRna 'A' = Just 'U'
dnaNucleotideToRna _ = Nothing