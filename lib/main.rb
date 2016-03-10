require_relative 'ui'
require_relative 'multiplication_generator'

generator = MultiplicationGenerator.new
ui = Ui.new($stdin, $stdout, generator)
ui.print_multiplications
