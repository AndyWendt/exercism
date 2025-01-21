require 'prime'

class Raindrops
  def self.convert(number)
    calculated_factors = number.prime_division.map { |factors| factors[0] }
    sounds = listen_for_sounds(calculated_factors)
    return sounds.join('') unless sounds.empty?

    number.to_s
  end

  private

  def self.listen_for_sounds(factors)
    sounds = []
    sounds.push('Pling') if factors.include?(3)
    sounds.push('Plang') if factors.include?(5)
    sounds.push('Plong') if factors.include?(7)
    sounds
  end
end
