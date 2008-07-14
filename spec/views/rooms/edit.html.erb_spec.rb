require File.dirname(__FILE__) + '/../../spec_helper'

describe "/rooms/edit.html.erb" do
  include RoomsHelper
  
  before do
    @room = mock_model(Room)

    @room.stub!(:story_id).and_return("1")

    @room.stub!(:name).and_return("MyString")

    assigns[:room] = @room
  end

  it "should render edit form" do
    render "/rooms/edit.html.erb"
    
    response.should have_tag("form[action=#{room_path(@room)}][method=post]") do

      with_tag('input#room_name[name=?]', "room[name]")

    end
  end
end


