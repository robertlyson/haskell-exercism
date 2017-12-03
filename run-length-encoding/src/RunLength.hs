module RunLength (decode, encode) where

import Data.List
import Data.Typeable
import Data.Char

decode :: String -> String
decode [] = []
decode text = join $ group $ split text where
    split = groupBy (\x y -> all isDigit [x,y])
    group x 
        | x == [] = [] 
        | isNumber $ head x = (read $ head x, head $ tail x):(group $ tail $ tail x) 
        | otherwise = (1,head x):(group $ tail x)
    join = concat . concatMap (\(a,b) -> replicate a b)
    isNumber n = all isDigit n

encode :: String -> String
encode [] = []
encode text = joinGroups $ groupChars text where
    lengthToString string 
        | length string == 1 = ""
        | otherwise = show $ length string
    groupChars = map (\x -> (lengthToString x) ++ [head x]) . group
    joinGroups = foldl (\acc x -> acc ++ x) ""