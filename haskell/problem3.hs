--The prime factors of 13195 are 5, 7, 13 and 29.

--What is the largest prime factor of the number 600851475143 ?


factors :: Integer -> [Integer]
factors num = filter (isFactorOf num) [1..num]

isFactorOf num x = num `mod` x == 0

primeFactors :: Integer -> [Integer]
primeFactors = filter isPrime . factors
    where
        isPrime num = factors num == [1, num]

--downTo :: Integer -> Integer -> [Integer]
--downTo top base | top <= base = [base]
--downTo top base = top : (top - 1) `downTo` base

