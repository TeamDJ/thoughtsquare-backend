class User < ActiveRecord::Base
  validates_presence_of :email, :display
  validates_uniqueness_of :email
end
