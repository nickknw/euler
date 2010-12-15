#!/usr/bin/ruby

myarray = []
(1..9).each { |num| 
    myarray.push num if num % 3 == 0 or num % 5 == 0 
}
sum = myarray.inject { |result, num| result + num }
p sum
