require_relative 'ui'
require_relative 'multiplication_generator'

generator = MultiplicationGenerator.new
ui = Ui.new($stdin, $stdout)
generator.generate_multiplications_up_to(ui.request_number)
