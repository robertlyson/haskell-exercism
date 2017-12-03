module Grains (square, total) where

square :: Integer -> Maybe Integer
square = calc where
    calc n 
        | n <= 0 = Nothing
        | n > 64 = Nothing
        | otherwise = Just . last . take (fromInteger n ) $ iterate (*2) 1

total :: Integer
total = sum . take 64 $ iterate (*2) 1
