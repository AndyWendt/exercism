require 'prime'

class Raindrops
  def self.convert(number)
    factors = number.prime_division.flatten
    return 'Pling' if factors.include?(3)
    number.to_s
  end
end
