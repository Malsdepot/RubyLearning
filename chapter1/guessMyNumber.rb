#!/bin/ruby -w
#Get my number: From Head First Ruby

#initial variables

numberOfGuessesAllowed = 10
lowTarget = 1
highTarget = 100
numGuessesUsed = 0
guessedIt = false

#Greetings, initial input
puts "Welcome to 'Get My Number'!"
print "What is your name? "
input = gets
input = input.chomp

puts "Welcome, #{input}!\n\n"

#Generate and store a random number, print remaining guesses
puts "I'm thinking of a number between #{lowTarget} and #{highTarget}."
puts "Can you guess the number? "

targetNumber = rand(100) + 1

#Logic Loop
while guessedIt ==  false and numGuessesUsed < numberOfGuessesAllowed
  puts "you have #{numberOfGuessesAllowed - numGuessesUsed} guesses remaining."
  puts "Make your guess: "
  guess = gets.to_i
  if guess == targetNumber
    puts "You win! You guess my number!"
    guessedIt = true
  elsif guess < targetNumber
    puts "Oops, your guess was too LOW!"
    numGuessesUsed+=1
  elsif guess > targetNumber
    puts "Oops, your guess was too HIGH!"
    numGuessesUsed+=1
  else
    puts "How did you do that!?"
  end
end
  unless guessedIt
    puts "You didn't guess it this time. It was #{targetNumber}."
  end




