class Triangle
  # write code here
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  
  def initialize(equi, iso, scal)
    @equilateral = equi
    @isosceles = iso
    @scalene = scal 
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end
