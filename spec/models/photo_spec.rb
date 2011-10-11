require 'spec_helper'

describe Photo do
  it { should have_attached_file(:image)}
end
