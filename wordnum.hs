-- Screen RC2 Pg. 297 Sec 8.6 "Numbers into words"

module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"

digits :: Int -> [Int]
digits num = go num []
  where go n numList
          | n < 10 = numList ++ [n]
          | otherwise = (digits (n `div` 10)) ++ [n `mod` 10]

wordNumber :: Int -> String
wordNumber n = concat $ intersperse "-" $ map digitToWord $ digits n

-- > wordNumber 123456
-- "one-two-three-four-five-six"
