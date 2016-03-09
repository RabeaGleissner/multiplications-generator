class Ui
  attr_reader :input, :output

  def initialize(input, output)
    @input = input
    @output = output
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
