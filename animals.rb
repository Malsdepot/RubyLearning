#!/bin/ruby

class Bird
  def talk
    puts "Chirp! Chirp!"
  end
  def move(destination)
    puts "Flying to the #{destination}."
  end
end

class Dog
  attr_reader :name, :age
  
  def name= (value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end

  def age= (value)
    if value < 0
      raise "The age of #{value} is incorrect!"
    end
    @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "Bark! Bark!"
  end
  def move (destination)
    puts "Running to the #{destination}."
  end
end

class Cat
  def talk
    puts "Meow! Meow!"
  end
  def move(destination)
    puts "Running to the #{destination}."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
bird.talk
cat.move("house")
