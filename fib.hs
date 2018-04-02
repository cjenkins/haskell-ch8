fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci a = (+) (fibonacci (a-1)) (fibonacci (a-2))
