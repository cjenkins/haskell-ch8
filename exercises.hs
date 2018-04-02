-- Screen RC2 Pg. 294 Sec 8.6 "8.6 Chapter Exercises"

-- What is the type of [[True, False], [True, True], [False, True]]?
-- [[Bool]]

-- Which of the following has the same type as ^
-- [(True, False), (True, True), (False, True)]
-- [[3 == 3], [6 > 5], [3 < 4]] **THIS ONE**
-- [3 == 3, 6 > 5, 3 < 4]
-- ["Bool", "more Bool", "Booly Bool!"]

func :: [a] -> [a] -> [a]
func x y = x ++ y

-- x and y must be of the same type? Yes
-- x and y must both be lists? Yes
-- if x is a String then y must be a String? Yes

-- What is a valid application of func?
-- func "Hello World"
-- func "Hello" "World" **THIS ONE**
-- func [1, 2, 3] "a, b, c"
-- func ["Hello", "World"]

--Reviewing currying
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- Fill in type
flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- What is the value of:
-- appedCatty "whoohoo!" - "woops mrow wohoo!"
-- frappe "1" - "1 mrow haha"
-- frappe (appedCatty "2") - "woops mrow 2 mrow haha"
-- appedCatty (frappe "blue") - "woops mrow blue mrow haha"
-- cattyConny (frappe "pink")
--            (catty Conny "green" (appedCatty "blue"))
-- "pink mrow haha mrow green mrow woops mrow blue"
-- cattyConny (flippy "Pugs" "are") "awesome" - "are mrow Pugs mrow awesome"

--Recursion

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n)
          | otherwise =
            go (n - d) d (count + 1)

-- Write out the steps for reducing dividedBy 15 2 to its final answer
-- go 15 2 0
-- go 13 2 1
-- go 11 2 2
-- go 9  2 3
-- go 7  2 4
-- go 5  2 5
-- go 3  2 6
-- go 1  2 7
-- (7, 1)

-- Write a function that recursively sums all number from 1 to n, n being the argument.

sum' :: (Eq a, Num a) => a -> a
sum' 0 = 0
sum' 1 = 1
sum' num = go num 2 1
  where go n idx sum
          | idx == n = sum + n
          | otherwise = go n (idx + 1) (sum + idx)

-- Write a function that multiplies two integral numbers using recursive summation.

mult :: (Integral a) => a -> a -> a
mult 0 _ = 0
mult _ 0 = 0
mult x y = go x y 0 0
  where go x' y' count sum
          | count >= y' = sum
          | otherwise = go x' y' (count + 1) (sum + x')
