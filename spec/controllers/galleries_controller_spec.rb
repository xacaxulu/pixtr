require 'spec_helper'

describe GalleriesController, "#new" do
  before do
    get :new
  end
  
  it { should respond_with(:success) }
  it { should render_template(:new) }
end
