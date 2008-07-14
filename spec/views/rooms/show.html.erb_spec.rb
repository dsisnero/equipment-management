require File.dirname(__FILE__) + '/../../spec_helper'

describe "/rooms/show.html.erb" do
  include RoomsHelper
  
  before(:each) do
    @room = mock_model(Room)

    @room.stub!(:story_id).and_return("1")

    @room.stub!(:name).and_return("MyString")


    assigns[:room] = @room
  end

  it "should render attributes in <p>" do
    render "/rooms/show.html.erb"

    response.should have_text(/MyString/)

  end
end

