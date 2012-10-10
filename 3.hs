isPrime :: Int -> Bool
isPrime n = all (\m -> n `mod` m /= 0) [2..(n - 1)]

solve :: Int
solve = maximum $ primeFactors 600851475143

primeFactors :: Int -> [Int]
primeFactors n = primeFactors' n 2
  where
    primeFactors' num prime
      | num < prime = []
      | isPrime num = [num]
      | otherwise = if num `mod` prime == 0
                    then prime : primeFactors' (num `div` prime) prime
                    else primeFactors' num (nextPrime prime)
                       
nextPrime :: Int -> Int
nextPrime n
  | isPrime $ succ n = succ n
  | otherwise = nextPrime $ succ n
 
