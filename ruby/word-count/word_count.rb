class Phrase
  def initialize(string)
    @words = string.gsub(/[^0-9A-Za-z ]/, '').split(/(?:[\s]+)/)
  end

  def word_count
    @words.reduce({}) do |hash, word|
      current_count = hash[word] ? hash[word] + 1 : 1
      hash[word] = current_count
      hash
    end
  end
end
