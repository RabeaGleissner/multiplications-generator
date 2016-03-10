require_relative 'spec_helper'
require_relative '../lib/multiplication_generator'

describe MultiplicationGenerator do

  let(:generator) {MultiplicationGenerator.new}

  it "multiplies two given numbers" do
    expect(generator.multiply(2,3)).to eq(6)
  end

  it "generates multiplication statements for all combinations up to 3" do
    expect(generator.generate_multiplications_up_to(2)).to eq([[0,0,0], [0,1,0], [0,2,0],
                                                               [1,0,0], [1,1,1], [1,2,2],
                                                               [2,0,0], [2,1,2], [2,2,4]])
  end


end
