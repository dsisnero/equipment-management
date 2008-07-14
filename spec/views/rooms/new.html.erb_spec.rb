require File.dirname(__FILE__) + '/../../spec_helper'

describe "/rooms/new.html.erb" do
  include RoomsHelper
  
  before(:each) do
    @room = mock_model(Room)
    @room.stub!(:new_record?).and_return(true)

    @room.stub!(:story_id).and_return("1")

    @room.stub!(:name).and_return("MyString")

    assigns[:room] = @room
  end

  it "should render new form" do
    render "/rooms/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", rooms_path) do

      with_tag("input#room_name[name=?]", "room[name]")

    end
  end
end


