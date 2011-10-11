class PhotosController < ApplicationController
  
  def new
    @photo = Photo.new
  end
  
  def index
    @photos = Photo.all
    
    respond_to  do |format|
      format.html
    end
  end
  

  def create
    @photo = Photo.new(params[:photo])
    
    @photo.save 
    redirect_to @photo

  end
  
  def show
    @photo = Photo.find(params[:id])
  end
end
