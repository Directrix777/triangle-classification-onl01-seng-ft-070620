

class Triangle

  attr_accessor :side_a, :side_b, :side_c
  
  def initialize(a, b, c)
    @side_a = a
    @side_b = b
    @side_c = c
  end

  def kind
    if a == b && b == c
      return :equilateral
    elsif a == b || b == c
      return :isosceles
    end
      
      
  end

end
