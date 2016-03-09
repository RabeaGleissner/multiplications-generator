class MultiplicationGenerator

  def multiply(factor1, factor2)
    factor1 * factor2
  end

  def print_statement(factor1, factor2, result)
    puts "#{factor1} x #{factor2} = #{result}"
  end

  def generate_multiplications_up_to(number)
    (0..number).map do |factor1|
      (0..number).map do |factor2|
        print_statement(factor1, factor2, multiply(factor1, factor2))
      end
    end
  end

end
