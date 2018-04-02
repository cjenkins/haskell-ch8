-- Screen RC2 Pg. 296 Sec 8.6 "McCarthy 91 function"

-- MC(n) = { n - 10         if n > 100
--           MC(MC(n + 11)) if n <= 100 }

mc91 :: Integer -> Integer
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91(mc91(n + 11))

