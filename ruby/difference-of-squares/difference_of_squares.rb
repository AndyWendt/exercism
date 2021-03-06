class Squares
  attr_reader :numbers

  def initialize(number)
    @numbers = 1..number
  end

  def square_of_sum
    (numbers.reduce(0) { |sum, number| sum + number }) ** 2
  end

  def sum_of_squares
    numbers.reduce(0) { |sum, number| sum + (number ** 2) }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
