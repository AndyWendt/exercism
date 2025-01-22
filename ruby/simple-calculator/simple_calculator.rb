class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
    raise UnsupportedOperation.new if %w[+ * /].none?(operation)

    case operation
    when '+'
      total = first_operand + second_operand
    when '*'
      total = first_operand * second_operand
    when '/'
      return "Division by zero is not allowed." if second_operand == 0
      total = first_operand / second_operand
    end

    "#{first_operand} #{operation} #{second_operand} = #{total}"
  end
end
