import Data.List

isPalindrome :: Show a => a -> Bool
isPalindrome a = show a == (reverse $ show a)

nums :: [Int]
nums = reverse $ sort [n * m | n <- [1..999], m <- [1..999]]

solve :: Int
solve = head $ filter isPalindrome $ nums
