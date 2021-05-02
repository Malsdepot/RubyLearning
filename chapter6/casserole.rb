#!/bin/ruby

def make_casserole
  puts "Preheat oven to 375 degrees"
  ingredients = yield if block_given?
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 minutes"
end

make_casserole { "noodles, celery, and tuna" }

make_casserole { "rice, broccoli, and chicken" }

