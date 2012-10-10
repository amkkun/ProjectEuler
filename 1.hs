solve :: [Int] -> Int
solve = sum . filter isMatch

isMatch :: Int -> Bool
isMatch n = (n `mod` 3 == 0) || (n `mod` 5 == 0)
