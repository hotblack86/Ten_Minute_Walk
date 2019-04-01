
class Walk

attr_reader :input, :west, :east, :north, :south

  def initialize(input)
    @input = input
    @west = 0
    @east = 0
    @north = 0
    @south = 0
  end

  def run
    is_ten?
    direction_even
    @west === @east && @north === @south ? true : false
  end

  def is_ten?
    return @input.length === 10
  end

  def direction_even
    @input.each do |dir|
      if dir === 'w'
        @west += 1
      elsif dir === 'e'
        @east += 1
      elsif dir === 'n'
        @north += 1 
      else 
        @south += 1
      end  
    end
  end

end