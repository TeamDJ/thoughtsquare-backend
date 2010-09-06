class User < ActiveRecord::Base
  validates_presence_of :email, :display_name, :mobile_number
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  has_many :user_locations
  has_many :locations, :through => :user_locations
  belongs_to :current_location, :class_name => "Location", :foreign_key => "current_location_id"
    
  def to_s
    display_name
  end
end
