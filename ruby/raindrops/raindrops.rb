require 'prime'

class Raindrops
  def self.convert(number)
    factors = number.prime_division.flatten
    raindrops = []
    raindrops.push('Pling') if factors.include?(3)
    raindrops.push('Plang') if factors.include?(5)
    raindrops.push('Plong') if factors.include?(7)
    return raindrops.join('') unless raindrops.empty?

    number.to_s
  end
end
