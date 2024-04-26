# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'


## Your test code can go here

# pp @candidates


# @candidates.each do |test_candidate|
#   puts "----------   test_candidate: #{test_candidate[:id]}   ----------"
#   puts "experienced?: #{experienced?(test_candidate)}" 
#   puts "git_experienced?: #{git_experienced?(test_candidate)}"
#   puts "experienced_python_ruby?: #{experienced_python_ruby?(test_candidate)}" 
#   puts "applied_recently?: #{applied_recently?(test_candidate)}" 
#   puts "is_adult?: #{is_adult?(test_candidate)}" 
#   puts "------------------END------------------------"
# end

pp ordered_by_qualifications(@candidates)