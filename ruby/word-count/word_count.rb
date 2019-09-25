class Phrase
  def initialize(string)
    phrase_string = string.strip.gsub(/[^0-9A-Za-z,' ]/, '')
    @words = replace_quotes(phrase_string).split(/(?:[, \s]+)/)
  end

  def word_count
    @words.reduce({}) do |hash, word|
      word = word.downcase
      current_count = hash[word] ? hash[word] + 1 : 1
      hash[word] = current_count
      hash
    end
  end

  private

  def replace_quotes(phrase_string)
    matches = phrase_string.scan(/'[a-zA-Z]+'/) || []

    matches.each do |match|
      replace = match.gsub("'", '')
      phrase_string = phrase_string.gsub(match, replace)
    end
    phrase_string
  end
end
