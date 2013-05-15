require File.dirname(__FILE__) + '/../spec_helper'

describe Venue do
  it "should be valid" do
    Venue.new.should be_valid
  end
end
