module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference n = squareOfSums n - sumOfSquares n

squareOfSums :: Integral a => a -> a
squareOfSums 0 = 0
squareOfSums n = (^2) $ foldl1 (+) [1..n]

sumOfSquares :: Integral a => a -> a
sumOfSquares 0 = 0
sumOfSquares n = sum $ map (^2) [1..n]
