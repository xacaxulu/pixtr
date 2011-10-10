class Post < ActiveRecord::Base
  validates_presence_of :title, :on => :create, :message => "can't be blank"
end
