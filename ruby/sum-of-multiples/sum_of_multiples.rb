=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples

  attr_reader :magical_numbers
  def initialize(*magical_numbers)
    @magical_numbers = magical_numbers
  end

  def to(level_number)
    sum = magical_numbers.inject([]) do |acc, magical_number|
      magical_number_array = []
      if magical_number == 0 || (magical_number > level_number)
        acc.push(magical_number_array)
        next acc
      end

      current_number = magical_number

      while current_number < level_number
        magical_number_array.push(current_number)
        current_number += magical_number
      end

      acc.push(magical_number_array)
      acc
    end

    sum.flatten.uniq.sum
  end
end
