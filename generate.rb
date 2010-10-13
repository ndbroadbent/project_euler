#!/usr/bin/env ruby
# -----------------------------------------
# Run:
# $ ./generate.rb 1
# to create a new solution directory for problem #1.

system("mkdir #{ARGV[0]}")
system("cp -f template.rb #{ARGV[0]}/solution.rb")
system("cp -f template.c #{ARGV[0]}/solution.c")

