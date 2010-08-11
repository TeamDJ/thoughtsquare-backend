class User < ActiveRecord::Base
  validates_presence_of :email, :display_name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
  has_many :locations, :through => :user_location
end
