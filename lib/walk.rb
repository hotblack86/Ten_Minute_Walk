
class Walk

attr_reader :input, :latitude, :longitude

  def initialize(input)
    @input = input
    @latitude = 0
    @longitude = 0
  end

  def run
    is_ten?
    direction_even
    return @latitude.even? || @longitude.even?
  end

  def is_ten?
    return @input.length === 10
  end

  def direction_even
    @input.each do |dir|
      dir === 'w' || dir === 'e' ? @latitude += 1 : @longitude += 1
    end
  end

end