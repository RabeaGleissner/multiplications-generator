class MultiplicationGenerator

  def multiply(factor1, factor2)
    factor1 * factor2
  end

  def generate_multiplications_up_to(number)
    factors_with_products = []
    (0..number).map do |factor1|
      (0..number).map do |factor2|
        factors_with_products << [factor1, factor2, multiply(factor1, factor2)]
      end
    end
    factors_with_products
  end

end
