#!/usr/bin/env ruby
# -----------------------------------------
# | A solution to a Project Euler problem |
# -----------------------------------------
require 'rubygems'
require 'pp'
problem_no = File.dirname(File.expand_path(__FILE__)).split('/').last
puts "=== Solving Project Euler problem ##{problem_no}\n\n"
question = %Q{

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

def find_largest_palindrome(i)
  largest = [0]
  (100..i).each do |a|
    (100..i).each do |b|
      p = a * b
      largest = [p, a, b] if palindrome?(p) and p > largest[0]
    end
  end
  return largest
end

product, a, b = find_largest_palindrome(999)

puts "#{a} x #{b} = #{product}"


