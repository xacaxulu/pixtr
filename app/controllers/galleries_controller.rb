class GalleriesController < ApplicationController

  def new
    @gallery = Gallery.new
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @gallery.save!
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def show
    @gallery = Gallery.find(params[:id])
  end
end
