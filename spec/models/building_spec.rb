require File.dirname(__FILE__) + '/../spec_helper'

describe Building do
  before(:each) do
    @building = Building.new
  end

  it "should be valid" do
    @building.should be_valid
  end
end
