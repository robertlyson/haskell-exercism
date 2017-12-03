module Acronym (abbreviate) where

import Data.Char
import Data.List

abbreviate :: String -> String
abbreviate [] = ""
abbreviate xs = foldl1 (++) $ map extract $ words' splitBy xs where
    splitBy x = isSpace x  || x == '-'
    extract text
        | isLower $ head text = (toUpper $ head text):[] 
        | all isUpper $ filter isLetter text = (head text):[]
        | otherwise = filter isUpper text

words'      :: (Char -> Bool) -> String -> [String]
words' f s  =  case dropWhile f s of
               "" -> []
               s' -> w : words' f s''
                     where (w, s'') = break f s'