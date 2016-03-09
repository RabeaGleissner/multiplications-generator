require_relative 'spec_helper'
require_relative '../lib/multiplication_table'

describe MultiplicationTable do

  let(:table) {MultiplicationTable.new}

  it "multiplies two given numbers" do
    expect(table.multiply(2,3)).to eq(6)
  end

  it "prints multiplication statement to console" do
    expect{table.print_statement(2,3,6)}.to output("2 x 3 = 6\n").to_stdout
  end

  it "generates multiplication statements for all combinations up to 3" do
    expect{table.generate_multiplications_up_to(3)}.to output("0 x 0 = 0\n0 x 1 = 0\n0 x 2 = 0\n0 x 3 = 0\n1 x 0 = 0\n1 x 1 = 1\n1 x 2 = 2\n1 x 3 = 3\n2 x 0 = 0\n2 x 1 = 2\n2 x 2 = 4\n2 x 3 = 6\n3 x 0 = 0\n3 x 1 = 3\n3 x 2 = 6\n3 x 3 = 9\n").to_stdout
  end

end
