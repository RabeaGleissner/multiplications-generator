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
end
