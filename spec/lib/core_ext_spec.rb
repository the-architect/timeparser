require 'spec_helper'

describe String do
  it "delegates to parser" do
    string = "1h30m"
    Timeparser.should_receive(:parse).with(string)
    string.parse_time
  end

  it "parses time" do
    "1h30m".parse_time.minutes.should eql 90
  end
end