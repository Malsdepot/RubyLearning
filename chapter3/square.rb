#!/bin/ruby

class Square < Rectangle
  def width=(width)
    @width = width
    @height = width
  end
end
