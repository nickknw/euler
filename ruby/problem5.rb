#!/usr/bin/ruby

def is_prime(num)
    prime = true
    (2...num).each { |n| prime &= num % n != 0 }
    return prime
end

def get_factors(num)
    (2..num).select { |n| num % n == 0 } 
end

start = Time.new.to_f
factors = get_factors(600851475143)
printf("halfway? -- %f\n", (Time.new.to_f - start).to_s)
prime_factors = factors.select { |n| is_prime(n) }
puts prime_factors
printf("done -- %f\n", (Time.new.to_f - start).to_s)

