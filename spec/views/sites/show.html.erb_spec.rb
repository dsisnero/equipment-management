require File.dirname(__FILE__) + '/../../spec_helper'

describe "/sites/show.html.erb" do
  include SitesHelper
  
  before(:each) do
    @site = mock_model(Site)

    @site.stub!(:latitude).and_return("MyString")

    @site.stub!(:longitude).and_return("MyString")

    @site.stub!(:elevation).and_return("MyString")


    assigns[:site] = @site
  end

  it "should render attributes in <p>" do
    render "/sites/show.html.erb"

    response.should have_text(/MyString/)

    response.should have_text(/MyString/)

    response.should have_text(/MyString/)

  end
end

