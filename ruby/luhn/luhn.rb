class Luhn
  def self.valid?(string)
    string = string.gsub(/[^0-9]/, '')
    return false unless string.length > 1
    return true
  end
end
