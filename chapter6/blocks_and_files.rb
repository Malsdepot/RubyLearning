#!/bin/ruby

#Manual wayto open and close files
#review_file = File.open("reviews.txt")
#lines = review_file.readlines
#review_file.close
lines = []

File.open("reviews.txt") do |review_file|
  lines=review_file.readlines
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

