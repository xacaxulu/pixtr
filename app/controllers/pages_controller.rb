class PagesController < ApplicationController
  def index
    @galleries = Gallery.all
    
    respond_to do |format|
      format.html
    end
  end
    
end