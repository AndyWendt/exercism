class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    number == digits.reduce(0) { |sum, n| sum + (n ** digits.length) }
  end
end
