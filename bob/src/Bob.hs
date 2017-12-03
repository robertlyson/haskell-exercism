module Bob (responseFor) where

responseFor :: String -> String
responseFor xs 
    | length xs == 0 || all (`elem` [' ','\t','\n','\r']) xs = "Fine. Be that way!"
    | all (`elem` ' ':',':(show [1..9])) xs = "Whatever."
    | all (`elem` ',':'?':'!':' ':'1':'2':'3':['A'..'Z']++['%','^','*','@','#','$','(']) xs = "Whoa, chill out!"
    | (== '?') . head $ reverse $ filter (/= ' ') xs = "Sure."
    | otherwise = "Whatever."