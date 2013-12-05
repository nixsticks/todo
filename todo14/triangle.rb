class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def kind
    if x <= 0 or y <= 0 or z <= 0 
      raise TriangleError, "This is not a triangle."
    end
    s = (x + y + z)/2.0
    i = (s - x) * (s - y) * (s - z)
    if i <= 0
      raise TriangleError, "This is not a triangle."
    end
    if x == y and x == z and y == z
      :equilateral
    elsif x == y or y == z or x == z
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end