class Acronym
  def self.abbreviate(string)
    words = string.split(' ')
    puts words
    words.reduce('') { |acronym, word| acronym + word[0].upcase }
  end
end
