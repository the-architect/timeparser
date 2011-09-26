require 'spec_helper'

describe Timeparser::Time do
  it "creates instance" do
    Timeparser::Time.new(0).should_not be_nil
  end

  it "should not round hours by default" do
    Timeparser::Time.new(130).hours.should eql 2
  end

  it "should round down" do
    Timeparser::Time.new(130).hours(:down).should eql 2
  end

  it "should round up" do
    Timeparser::Time.new(130).hours(:up).should eql 3
  end
end