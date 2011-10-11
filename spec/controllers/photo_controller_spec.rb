require 'spec_helper'

describe PhotosController, "#show" do
  let(:gallery) { factory(:gallery)}
  before do
    get :new, :gallery_id => vacation_gallery.id
  end
  xit {should assign_to(:gallery).with(vacation_gallery)}

end
