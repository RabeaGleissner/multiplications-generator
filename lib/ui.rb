class Ui
  attr_reader :input, :output, :generator

  def initialize(input, output, generator)
    @input = input
    @output = output
    @generator = generator
  end

  def print_multiplications
    string = ""
    generator.generate_multiplications_up_to(request_number).cycle(1) do |row|
      string += "#{row[0]} x #{row[1]} = #{row[2]}\n"
    end
    output.puts string
  end

  def request_number
    output.puts "Please enter a number: "
    get_number
  end

  def get_number
    user_input = input.gets.chomp
    return user_input.to_i if is_number?(user_input)
    request_number
  end

  def is_number?(input)
    input.to_i.to_s == input
  end

end
