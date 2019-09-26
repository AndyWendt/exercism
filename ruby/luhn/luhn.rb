class Luhn
  def self.valid?(string)
    return false unless string.length > 1
    return true
  end
end
