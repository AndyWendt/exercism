=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  def self.of_dna(string)
    map = {
      G: "C",
      C: "G",
      T: "A",
      A: "U"
    }

    string.chars.map {|ch| map[ch.to_sym] }.join
  end
end
