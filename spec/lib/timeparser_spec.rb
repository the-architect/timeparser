require 'spec_helper'

describe Timeparser do
  it "creates instance" do
    Timeparser::Parser.new.should_not be_nil
  end

  let(:parser){ Timeparser::Parser.new }

  it "parses hours" do
    parser.parse('1h').should eql 60
  end

  it "parses minutes" do
    parser.parse('1m').should eql 1
  end

  it "parses hours and minutes" do
    parser.parse('1h20m').should eql 80
  end

  it "parses dot notation" do
    parser.parse('1:20').should eql 80
  end
end