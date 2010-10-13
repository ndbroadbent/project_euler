#!/usr/bin/env ruby
# -----------------------------------------
# | A solution to a Project Euler problem |
# -----------------------------------------
require 'rubygems'
require 'pp'
problem_no = File.dirname(File.expand_path(__FILE__)).split('/').last
puts "=== Solving Project Euler problem ##{problem_no}\n\n"
question = %Q{

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

# Process the divisible range in reverse, this will speed up the calculation.
@range = (1..20).to_a.reverse

def divisible_for_all?(x)
  # Return false if there are any values for which a division leaves a remainder.
  # True if none are detected.
  !@range.detect{|i| x % i > 0 }
end

# Must be at least a multiple of 20.
top = @range.first
i = top
while not divisible_for_all?(i)
  i += top
end

puts i
