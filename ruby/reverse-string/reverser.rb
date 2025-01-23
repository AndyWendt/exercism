=begin
Write your code for the 'Reverse String' exercise in this file. Make the tests in
`reverse_string_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/reverse-string` directory.
=end

class Reverser
  def self.reverse(string)
    string_array = string.split('')
    length = string_array.length

    return "" if length == 0

    out = []
    count = 0
    last = -1
    while count <= length
      out.push(string_array[last])
      last -= 1
      count += 1
    end

    out.join("")
  end
end
