require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(s1,s2,s3)
    self.side1 = s1
    self.side2 = s2
    self.side3 = s3
  end

  def kind
    sides = [side1,side2,side3].sort
    side_check = (sides[0] + sides[1]) > sides[2] && !sides.include?(0) #boolean
    # binding.pry
    if side_check == false
      begin
        raise TriangleError
      end
    end
    
    return :scalene if sides.uniq.count == 3
    return :isosceles if sides.uniq.count == 2
    return :equilateral if sides.uniq.count == 1
    
  end
  class TriangleError < StandardError

  end
end
