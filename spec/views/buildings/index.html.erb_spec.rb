require File.dirname(__FILE__) + '/../../spec_helper'

describe "/buildings/index.html.erb" do
  include BuildingsHelper
  
  before(:each) do

    building_98 = mock_model(Building)

    building_98.should_receive(:height).and_return("9.99")

    building_98.should_receive(:name).and_return("MyString")

    building_98.should_receive(:description).and_return("MyText")

    building_99 = mock_model(Building)

    building_99.should_receive(:height).and_return("9.99")

    building_99.should_receive(:name).and_return("MyString")

    building_99.should_receive(:description).and_return("MyText")

    assigns[:buildings] = [building_98, building_99]
  end

  it "should render list of buildings" do
    render "/buildings/index.html.erb"

    response.should have_tag("tr>td", "9.99", 2)

    response.should have_tag("tr>td", "MyString", 2)

    response.should have_tag("tr>td", "MyText", 2)

  end
end

