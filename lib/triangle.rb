require "pry"
class Triangle
  @@lengths =[]
  attr_accessor :length1, :length2, :length3
  def initialize(length1, length2, length3)
    @length1 =length1
    @length2 =length2
    @length3 =length3
    @@lengths <<  @length1
    @@lengths <<  @length2
    @@lengths <<  @length3
  end
  def kind
    if  @length1 == @length2 && @length2 == @length3
      :equilateral
    elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
      :isosceles
    else
      :scalene 
    end
  end
  def self.lengths
    @@lengths
  end
  def sides_greater_than_zero?
    @@lengths.all?(&:positive?)
  end
  def valid_triangle_inequality?
    @length1 + @length2 > @length3 && @length1 + @length3 > @length2 && @length2 + @length3 > @length1
  end
end

triangle= Triangle.new(3, 4, 5)
