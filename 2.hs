fib :: [Int]
fib = 1 : 2 : zipWith (+) fib (tail fib)

solve :: [Int] -> Int
solve = sum . filter even . takeWhile (< 4000000)
