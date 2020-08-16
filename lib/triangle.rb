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
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      
    
  end
  
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "you're triangle is invalid"
    end
    
  end
  
end
