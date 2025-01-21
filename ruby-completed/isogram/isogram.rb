class Isogram
    def self.isogram?(string)
      letters_found = {}
      for i in 0..(string.length - 1)
        letter = string[i].downcase
        next unless letter.match(/[a-z]/)
        return false if letters_found.key?(letter)
        letters_found[letter] = true
      end
      true
    end
end
