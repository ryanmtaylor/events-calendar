require File.dirname(__FILE__) + '/../spec_helper'

describe Twitter do
  it "should be valid" do
    Twitter.new.should be_valid
  end
end
