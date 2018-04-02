-- Screen RC 2 Pg. 296 Sec 8.6 "Fixing divided By"

data DividedResult =
   Result (Integer, Integer)
 | DividedByZero
 deriving Show

dividedBy :: Integer -> Integer -> DividedResult 
dividedBy = undefined
