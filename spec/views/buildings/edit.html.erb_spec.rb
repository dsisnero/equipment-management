require File.dirname(__FILE__) + '/../../spec_helper'

describe "/buildings/edit.html.erb" do
  include BuildingsHelper
  
  before do
    @building = mock_model(Building)

    @building.stub!(:height).and_return("9.99")

    @building.stub!(:name).and_return("MyString")

    @building.stub!(:description).and_return("MyText")

    assigns[:building] = @building
  end

  it "should render edit form" do
    render "/buildings/edit.html.erb"
    
    response.should have_tag("form[action=#{building_path(@building)}][method=post]") do

      with_tag('input#building_height[name=?]', "building[height]")

      with_tag('input#building_name[name=?]', "building[name]")

      with_tag('textarea#building_description[name=?]', "building[description]")

    end
  end
end


