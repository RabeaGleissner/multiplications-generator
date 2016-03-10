class Ui
  attr_reader :input, :output, :multiplication_generator

  def initialize(input, output, multiplication_generator)
    @input = input
    @output = output
    @multiplication_generator = multiplication_generator
  end

  def print_multiplications
    multiplication_generator.generate_multiplications_up_to(request_number).cycle(1) do |numbers|
      puts "#{numbers[0]} x #{numbers[1]} = #{numbers[2]}"
    end
  end

  def request_number
    output.puts "Please enter a number: "
    get_number
  end

  def get_number
    user_input = input.gets.chomp
    if is_number?(user_input)
      return user_input.to_i
    end
    request_number
  end

  def is_number?(input)
    input.upcase == input.downcase
  end

end
