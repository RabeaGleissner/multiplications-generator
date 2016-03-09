require_relative 'ui'
require_relative 'multiplication_table'

table = MultiplicationTable.new
ui = Ui.new($stdin, $stdout)
table.generate_multiplications_up_to(ui.request_number)
