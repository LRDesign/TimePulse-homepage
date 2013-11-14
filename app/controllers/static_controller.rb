class StaticController < ApplicationController

  # The home page.  The assumption is most users of the CMS will have
  # a custom-coded homepage that isn't part of the Pages database.
  def index
    path = 'home'
    @page = Page.find_by_permalink(path)
    if @page.nil? || !@page.published?
      # If the page is unpublished, we don't want to expose it
      # to the view even if it won't be rendered.
      @page = nil
      Rails.logger.info{"Returning 404 for #{path}"}
      render "public/404.html", :status => 404
    end
  end
end
