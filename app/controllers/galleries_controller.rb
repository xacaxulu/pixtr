class GalleriesController < ApplicationController
  before_filter :deny_visitor, :only => [:new, :create]
  
  def index
    @galleries = Gallery.all
    
    respond_to do |format|
      format.html
    end
  end

  def new
    @gallery = Gallery.new
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
      else
        format.html { render action: "new" }
     
      end
    end
  end
  
  def show
    @gallery = Gallery.find(params[:id])
  end

  private
  def deny_visitor
    #if signed out redirect
    unless signed_in?
      redirect_to :root, notice: 'Visitors cannot create a gallery'
    end
  end

end
