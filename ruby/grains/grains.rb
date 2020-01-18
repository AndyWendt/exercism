class Grains
  def self.square(position)
    position_is_invalid = (position <= 0) || (position > 64)
    throw ArgumentError.new if position_is_invalid
    2.pow(position-1)
  end

  def self.total
    2.pow(64) - 1
  end
end
