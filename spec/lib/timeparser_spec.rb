require 'spec_helper'

describe Timeparser do
  it "creates instance" do
    Timeparser::Parser.new.should_not be_nil
  end

  context "instance methods" do
    let(:parser){ Timeparser::Parser.new }

    it "ignores whitespaces" do
      parser.parse("  1h  ").to_i.should eql 60
    end

    it "handles whitespaces in between" do
      parser.parse('1h 20m').to_i.should eql 80
    end

    it "parses hours" do
      parser.parse('1h').to_i.should eql 60
      parser.parse('2hrs').to_i.should eql 120
      parser.parse('2hours').to_i.should eql 120
    end

    it "parses minutes" do
      parser.parse('1m').to_i.should eql 1
      parser.parse('20min').to_i.should eql 20
      parser.parse('120minutes').to_i.should eql 120
    end

    it "parses hours and minutes" do
      parser.parse('1h20m').to_i.should eql 80
      parser.parse('2hours 30minutes').to_i.should eql 150
    end

    it "parses colon notation" do
      parser.parse('1:20').to_i.should eql 80
    end

    it "parses enhanced colon notation" do
      parser.parse('1h:20m').to_i.should eql 80
    end

    it "parses empty string" do
      parser.parse('').to_i.should eql 0
    end

    it "does not parse times within a text" do
      parser.parse(%Q{The movie was 1h long but the truck was 20m long.}).to_i.should eql 0
    end
  end


  context "module methods" do
    it "has instance of parser" do
      Timeparser.parser.should be_instance_of(Timeparser::Parser)
    end

    it "should delegate to parser instance" do
      Timeparser.parser.should_receive(:parse).with('1:20')
      Timeparser.parse('1:20')
    end
  end

end