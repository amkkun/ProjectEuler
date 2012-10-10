fib :: [Integer]
fib = 1 : 2 : zipWith (+) fib (tail fib)

solve :: [Integer] -> Integer
solve = sum . filter even . takeWhile (< 4000000)
