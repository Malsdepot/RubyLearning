#!/bin/ruby

class Rectangle
 attr_reader :width, :height

 def width=(value)
   if value < 0
     raise "Value can't be negative"
   end
   @width = value
 end

 def height=(value)
   if value < 0
     raise "Value can't be negative"
   end
   @height = value
 end

 def area
   width * height
 end
end

class Square < Rectangle
  def width=(value)
    @width = value
    @height = value
  end

  def height=(value)
    @width = value
    @height = value
end

