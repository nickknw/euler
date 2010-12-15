#!/usr/bin/ruby
x, y, sum = 1, 1, 0
while sum < 90
  printf "Sum: %d\nx: %d\ny: %d\n", sum, x, y
  gets
  sum += (x + y)
  x, y = x + 2*y, 2*x + 3*y
end
 
puts "Sum is #{ sum }."
