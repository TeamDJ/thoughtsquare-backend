class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  
  validates_presence_of :user
  validates_presence_of :location
  validates_inclusion_of :event_type, :in => ["arrive","depart"]
  
  def title
    if event_type == "arrive"
      "new smurf on your turf"
    else
      "good riddance to bad rubbish"
    end    
  end
  
  def description
    if event_type == "arrive"
      "#{user.display_name} has arrived in #{location.title}" 
    else
      "#{user.display_name} has left #{location.title}"
    end    
  end
  
  def as_json(options={})
    super(:only => [:user_id, :event_type, :location_id], :methods =>[:title, :description])
  end
end
