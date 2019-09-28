class Acronym
  def self.abbreviate(string)
    words = string.split(/(?:[[:punct:],\s]+)/)
    words.reduce('') { |acronym, word| acronym + word[0].upcase }
  end
end
