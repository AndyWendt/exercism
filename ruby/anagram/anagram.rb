=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram

  attr_reader :word
  def initialize(word)
    @word = word
  end

  def match(test_words)
    test_words.reject {|test_word| test_word.downcase == word.downcase}\
              .select {|test_word| test_word.downcase.split('').sort == word.downcase.split('').sort}
  end
end
