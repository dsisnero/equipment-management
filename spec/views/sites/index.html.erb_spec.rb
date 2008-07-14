require File.dirname(__FILE__) + '/../../spec_helper'

describe "/sites/index.html.erb" do
  include SitesHelper
  
  before(:each) do

    site_98 = mock_model(Site)

    site_98.should_receive(:latitude).and_return("MyString")

    site_98.should_receive(:longitude).and_return("MyString")

    site_98.should_receive(:elevation).and_return("MyString")

    site_99 = mock_model(Site)

    site_99.should_receive(:latitude).and_return("MyString")

    site_99.should_receive(:longitude).and_return("MyString")

    site_99.should_receive(:elevation).and_return("MyString")

    assigns[:sites] = [site_98, site_99]
  end

  it "should render list of sites" do
    render "/sites/index.html.erb"

    response.should have_tag("tr>td", "MyString", 2)

    response.should have_tag("tr>td", "MyString", 2)

    response.should have_tag("tr>td", "MyString", 2)

  end
end

