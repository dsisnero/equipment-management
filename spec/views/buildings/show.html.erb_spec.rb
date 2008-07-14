require File.dirname(__FILE__) + '/../../spec_helper'

describe "/buildings/show.html.erb" do
  include BuildingsHelper
  
  before(:each) do
    @building = mock_model(Building)

    @building.stub!(:height).and_return("9.99")

    @building.stub!(:name).and_return("MyString")

    @building.stub!(:description).and_return("MyText")


    assigns[:building] = @building
  end

  it "should render attributes in <p>" do
    render "/buildings/show.html.erb"

    response.should have_text(/9\.99/)

    response.should have_text(/MyString/)

    response.should have_text(/MyText/)

  end
end

