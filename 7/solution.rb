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

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.

What is the 10001^(st) prime number?

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

def find_next_prime
  n = @primes.last
  begin
    n += 2
  end while @primes.detect{|p| n % p == 0 }
  @primes << n
  n
end

@primes = [2, 3]

while @primes.size < 10001
  find_next_prime
  print "\r== Found (#{@primes.size}) primes." if @primes.size % 100 == 0
end

puts "\n\n===== 10001st prime number: #{@primes[10000]}"

