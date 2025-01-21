class Luhn
  def self.valid?(string)
    return false if string.match(/[^0-9 ]/)
    string = string.gsub(/[^0-9]/, '')
    return false unless string.length > 1

    parity = string.length % 2
    sum = 0

    for i in 0..string.length
      number = string[i].to_i

      number *= 2 if i % 2 == parity
      number -= 9 if number > 9

      sum += number
    end

    (sum % 10) == 0
  end
end
