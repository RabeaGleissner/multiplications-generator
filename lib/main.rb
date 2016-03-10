require_relative 'ui'
require_relative 'multiplication_generator'

generator = MultiplicationGenerator.new
ui = Ui.new($stdin, $stdout)
ar = generator.generate_multiplications_up_to(ui.request_number)
ui.print_multiplications(ar)
