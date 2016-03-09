require_relative 'spec_helper'
require 'stringio'
require_relative '../lib/ui.rb'

describe Ui do
    let(:input_stream)  { StringIO.new }
    let(:ui) {Ui.new(input_stream)}

  it "asks user to input a number" do
    allow(ui.input).to receive(:gets).and_return('2')
    expect{ui.request_number}.to output("Please enter a number: \n").to_stdout
    expect(ui.request_number).to be == "2"
  end
end

