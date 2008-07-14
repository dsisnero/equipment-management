require File.dirname(__FILE__) + '/../../spec_helper'

describe "/sites/edit.html.erb" do
  include SitesHelper
  
  before do
    @site = mock_model(Site)

    @site.stub!(:latitude).and_return("MyString")

    @site.stub!(:longitude).and_return("MyString")

    @site.stub!(:elevation).and_return("MyString")

    assigns[:site] = @site
  end

  it "should render edit form" do
    render "/sites/edit.html.erb"
    
    response.should have_tag("form[action=#{site_path(@site)}][method=post]") do

      with_tag('input#site_latitude[name=?]', "site[latitude]")

      with_tag('input#site_longitude[name=?]', "site[longitude]")

      with_tag('input#site_elevation[name=?]', "site[elevation]")

    end
  end
end


