-- Screen RC2 Pg. 283 Sec 8.2 "Intermission: Exercise"

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes times n = applyTimes times (+1) n

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b

applyTimes' :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes' 0 f b = b
applyTimes' n f b = f (applyTimes' (n-1) f b)

--Write out the evaluation of:
applyTimes 5 (+1) 5
-- (+1) (applyTimes 4 (+1) 5)
-- (+1) (applyTimes 3 (+1) 5)
-- (+1) (applyTimes 2 (+1) 5)
-- (+1) (applyTimes 1 (+1) 5)
-- (+1) (applyTimes 0 (+1) 5)
-- 5
-- (+1) 5 == 6
-- (+1) 6 == 7
-- (+1) 7 == 8
-- (+1) 8 == 9
-- (+1) 9 == 10
-- 10
