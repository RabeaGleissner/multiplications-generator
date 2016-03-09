class Ui
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def request_number
    puts "Please enter a number: "
    input.gets.chomp
  end

end
