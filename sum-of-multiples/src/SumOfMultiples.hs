module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = sum $ filter (\x -> divisible x factors ) [1..limit-1] where
    divisible n = any ((== 0) . (n `mod`))