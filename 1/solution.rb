#!/usr/bin/env ruby
# -----------------------------------------
# | A solution to a Project Euler problem |
# -----------------------------------------
require 'rubygems'
problem_no = File.dirname(File.expand_path(__FILE__)).split('/').last
puts "=== Solving Project Euler problem ##{problem_no}"
question = %Q{

Find the sum of all the multiples of 3 or 5 below 1000.

}
puts "? #{question.strip}\n\n"
# --------------------------------------------------------------------

puts (0..999).inject(0){|r, i| r += i if i % 3 == 0 or i % 5 == 0; r }

