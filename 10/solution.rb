#!/usr/bin/env ruby
# coding: utf-8
# -----------------------------------------
# | A solution to a Project Euler problem |
# -----------------------------------------
require 'rubygems'
require 'pp'
problem_no = File.dirname(File.expand_path(__FILE__)).split('/').last
puts "=== Solving Project Euler problem ##{problem_no}\n\n"
question = %Q{

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

# Calculating all primes below 2,000,000 requires a better algorithm.
# -- We will use an array with all 1,000,000 natural, odd numbers.
# -- Each time a prime is found, the array will remove all numbers along those steps.

def is_prime?(n)
  (2..(n-2)).detect{ |i| n % i == 0 }
end

@set = (3..2000000).step(2).to_a
@primes = [2]

puts "=== Processing set..."

@set.each do |i|
  if is_prime?(i)
    @primes << i
    # Remove all values from the set at the prime indices
    (0..(@set.size)).step(i){ |x| @set.delete_at(x) }
  end
  print "\r=== Set size: #{@set.size}"
end

@total = @primes.inject(0){ |r,n| r + n }

puts "\n\n===== Sum of primes: #{@total}"

# This is rubbish! Way too slow in ruby.

