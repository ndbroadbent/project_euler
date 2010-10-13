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

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^(2) + b^(2) = c^(2)

For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

# a + b + c = 1000
# c = a**2 + b**2
# a < b < c
# a * b * c == ?

# => 1000 > c > b > a

solution = nil

(1..999).each do |c|
  (1..c).each do |b|
    (1..b).each do |a|
      next unless a + b + c == 1000
      next unless a**2 + b**2 == c**2
      solution = [a, b, c]
      break
    end
    break if solution
  end
  break if solution
  print "\r== #{c}"
end

a,b,c = solution

puts "\n\n===== Solution: #{a} x #{b} x #{c} = #{a*b*c}"
