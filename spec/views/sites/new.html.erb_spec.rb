require File.dirname(__FILE__) + '/../../spec_helper'

describe "/sites/new.html.erb" do
  include SitesHelper
  
  before(:each) do
    @site = mock_model(Site)
    @site.stub!(:new_record?).and_return(true)

    @site.stub!(:latitude).and_return("MyString")

    @site.stub!(:longitude).and_return("MyString")

    @site.stub!(:elevation).and_return("MyString")

    assigns[:site] = @site
  end

  it "should render new form" do
    render "/sites/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", sites_path) do

      with_tag("input#site_latitude[name=?]", "site[latitude]")

      with_tag("input#site_longitude[name=?]", "site[longitude]")

      with_tag("input#site_elevation[name=?]", "site[elevation]")

    end
  end
end


