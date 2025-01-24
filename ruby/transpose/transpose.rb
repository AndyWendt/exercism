=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end

class Transpose
  def self.transpose(input)
    return "" if input.empty?
    arrays = input.split("\n").map(&:chars)
    max_length = arrays.map {|arr| arr.length }.max
    out = Array.new(max_length) { [] }

    arrays.each_with_index do |arr, i1|
      arr.each_with_index do |value, i2|
        out[i2][i1] = value
      end
    end

    t = out.map do |arr|
      arr.map{ |s| s.nil? ? " " : s}.join("")
    end.join("\n")
    t
  end
end
