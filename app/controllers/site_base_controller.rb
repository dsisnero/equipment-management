# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class SiteBaseController < ActionController::Base

  layout "site"

  before_filter :find_site

    include AuthenticatedSystem

  #before_filter :find_site
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '0690c9554d3134d52b9fd3e7de96e05b'

  protected

  def find_site
     @site = Site.find_by_lid_fac(params[:site_id])
  end
end
