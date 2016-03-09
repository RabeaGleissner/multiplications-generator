require_relative 'spec_helper'
require 'stringio'
require_relative '../lib/ui.rb'

describe Ui do
    let(:input_stream)  { StringIO.new }
    let(:output_stream) { StringIO.new }
    let(:ui) {Ui.new(input_stream, output_stream)}

  it "asks user to input a number" do
    allow(ui.input).to receive(:gets).and_return("2")
    expect(output_stream).to receive(:puts).with("Please enter a number: ")
    ui.request_number
  end

  it "returns number that user has entered" do
    allow(ui.input).to receive(:gets).and_return("2")
    expect(ui.get_number).to eq(2)
  end

  it "checks if user input is a number" do
    expect(ui.is_number?("2")).to be true
    expect(ui.is_number?("n")).to be false
  end

  it "asks again for input if user has not given a number" do
    allow(ui.input).to receive(:gets).and_return("n")
    expect(output_stream).to receive(:puts).with("Please enter a number: ")
    ui.get_number
  end

end

