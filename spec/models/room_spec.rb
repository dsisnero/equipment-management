require File.dirname(__FILE__) + '/../spec_helper'

describe Room do
  before(:each) do
    @room = Room.new
  end

  it "should be valid" do
    @room.should be_valid
  end
end
