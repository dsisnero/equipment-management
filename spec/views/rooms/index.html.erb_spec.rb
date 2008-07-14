require File.dirname(__FILE__) + '/../../spec_helper'

describe "/rooms/index.html.erb" do
  include RoomsHelper
  
  before(:each) do

    room_98 = mock_model(Room)

    room_98.should_receive(:story_id).and_return("1")

    room_98.should_receive(:name).and_return("MyString")

    room_99 = mock_model(Room)

    room_99.should_receive(:story_id).and_return("1")

    room_99.should_receive(:name).and_return("MyString")

    assigns[:rooms] = [room_98, room_99]
  end

  it "should render list of rooms" do
    render "/rooms/index.html.erb"

    response.should have_tag("tr>td", "MyString", 2)

  end
end

