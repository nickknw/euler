#!/usr/bin/ruby
require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

found = false
num = 20
start = Time.new.to_f
until(found)
    num += 20
    tmpFound = true
    19.downto(1).each do |i| 
	if (num % i != 0) 
	    tmpFound = false
	    break
	end
    end
    found = tmpFound
end

currentTime = Time.new.to_f - start
printf("%d - %f seconds\n", num, currentTime) 

