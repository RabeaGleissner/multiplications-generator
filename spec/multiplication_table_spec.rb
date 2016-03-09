require_relative 'spec_helper'
require_relative '../lib/multiplication_table'

describe MultiplicationTable do

  it "multiplies two given numbers" do
    table = MultiplicationTable.new
    expect(table.multiply(2,3)).to eq(6)
  end
end
