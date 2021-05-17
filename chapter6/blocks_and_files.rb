#!/bin/ruby

#Manual wayto open and close files
#review_file = File.open("reviews.txt")
#lines = review_file.readlines
#review_file.close
lines = []
adjectives = []

File.open("reviews.txt") do |review_file|
  lines=review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end

adjectives = reviews.map do  |review| 
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives

