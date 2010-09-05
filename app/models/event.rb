class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  
  validates_presence_of :user
  validates_presence_of :location
  validates_inclusion_of :event_type, :in => ["arrive","depart"]
end
