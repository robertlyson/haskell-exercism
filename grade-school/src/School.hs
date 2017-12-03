module School (School, add, empty, grade, sorted) where

import Data.Map

data School = Map k [String]

add :: Int -> String -> School -> School
add gradeNum student school = error "You need to implement this function."

empty :: School
empty = School

grade :: Int -> School -> [String]
grade gradeNum school = error "You need to implement this function."

sorted :: School -> [(Int, [String])]
sorted school = error "You need to implement this function."
