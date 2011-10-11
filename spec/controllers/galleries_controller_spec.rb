require 'spec_helper'

describe GalleriesController, "#new" do
  before do
    get :new
  end
  
  it { response.should redirect_to(:root) }
end
