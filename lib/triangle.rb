require "pry"

class Triangle

  attr_accessor :side_a, :side_b, :side_c

  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
    @sides = [a,b,c]
  end

  def kind
    if @side_a == @side_b && @side_b == @side_c
      return :equilateral
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      return :isosceles
    elsif @side_a + @side_b > @side_c && @side_b + @side_c > @side_a && @side_c + @side_a > @side_b && !(@sides.include?(0))
      binding.pry
      return :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
