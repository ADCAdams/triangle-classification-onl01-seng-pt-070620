class Triangle
  # write code here
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  
  def initialize(equi, iso, scal)
    @equilateral = equi
    @isosceles = iso
    @scalene = scal 
  end
  
  def kind 
    
    if @equilateral <= 0 || @isosceles <= 0 || @scalene <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
      
    elsif (@equilateral+@isosceles) >= @scalene || (@equilateral+@scalene) >= @isosceles || (@isosceles+@scalene) >= @equilateral
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
      
    elsif @equilateral == @isosceles && @isosceles == @scalene
      :equilateral
    elsif @isosceles != @equilateral && @isosceles != @scalene && @equilateral != @scalene
      :scalene
    elsif @isosceles == @equilateral && @equilateral != @scalene
      :isosceles
    elsif @scalene == @equilateral && @equilateral != @isosceles
      :isosceles
    elsif @scalene == @isosceles && @equilateral != @isosceles
      :isosceles
    end   #end if
    
  end
  
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "you're triangle is invalid"
    end
    
  end
  
end
