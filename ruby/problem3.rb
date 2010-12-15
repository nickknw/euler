#!/usr/bin/ruby

sumOfSquares = squareOfSums = 0
(1..100).each { |i| sumOfSquares += i*i; squareOfSums += i } 
squareOfSums *= squareOfSums
puts "Sum of Squares: #{sumOfSquares}\nSquare of Sums: #{squareOfSums}"
puts "Difference: #{squareOfSums - sumOfSquares}"

