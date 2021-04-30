#!/bin/ruby
#Given an array of prices add them all together and return the total
def total(prices)
  amount = 0
  #From this:
  #index = 0
  #while index < prices.length
  #  amount+= prices[index]
  #  index += 1
  #end
  #To this:
  prices.each do |price|
    amount += price
  end
  amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))

def refund (prices)
  amount = 0
  #index = 0
  #while index < prices.length
  #  amount -= prices[index]
  #  index+=1
  #end
  prices.each do |price|
    amount -= price
  end
  amount
end

puts format("%.2f", refund(prices))

def discount(prices)
  savings = 0
  #index = 0
  #while index < prices.length
  # discount = prices[index]/3.0
    #puts format("Your discount: $%.2f", discount)
    #savings += discount
    #index += 1
  #end
  prices.each do |price|
    discount = price/3
    puts format("Your discount: $%.2f",discount)
    savings+=discount
  end
  savings
end

puts format("Your total discount: %.2f", discount(prices))


