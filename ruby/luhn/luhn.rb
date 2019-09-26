class Luhn
  def self.valid?(string)
    string = string.gsub(/[^0-9]/, '')
    return false unless string.length > 1

    numbers = string.reverse.split('').each_with_index.map do |number, index|
      number = number.to_i
      return number if (index % 2) != 0

      number *= 2
      number -= 9 if number > 10
      number
    end

    (numbers.inject('+') % 10) == 0
  end
end
