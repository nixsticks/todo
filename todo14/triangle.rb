class Triangle
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def kind
    raise TriangleError if not_valid?
    return :equilateral if x == y && x == z && y == z
    return :isosceles if x == y || y == z || x == z
    :scalene
  end

  def not_valid?
    s = (x + y + z)/2.0
    i = (s - x) * (s - y) * (s - z)

    x <= 0 || y <= 0 || z <= 0 || i<= 0
  end
end

class TriangleError < StandardError
  "This is not a valid triangle."
end