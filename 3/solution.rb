#!/usr/bin/env ruby
# -----------------------------------------
# | A solution to a Project Euler problem |
# -----------------------------------------
require 'rubygems'
require 'pp'
problem_no = File.dirname(File.expand_path(__FILE__)).split('/').last
puts "=== Solving Project Euler problem ##{problem_no}\n\n"
question = %Q{

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

number = 600851475143

def find_next_prime(n)
  begin
    n += 1
  end while @primes.detect{|p| n % p == 0 }
  @primes << n
  n
end

@primes = []

# Iterate through prime numbers until the final factor is found.
factors = []
p = 2

begin
  if number % p == 0
    number = number / p
    factors << p
  end
  p = find_next_prime(p)
end while number > 1

print "Factors: "
p factors
print "Multiplied together: "
p factors.inject(1){|r,n| r * n }

