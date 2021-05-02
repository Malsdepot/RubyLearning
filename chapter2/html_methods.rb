#!/bin/ruby

def paragraph in_string
  "<p>" + in_string + "</p>"
end

def image (in_string, width=100, height=100)
  "<img src='#{in_string}' width='#{width}' height='#{height}'/>"
end

