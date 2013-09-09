class Event < ActiveRecord::Base
  attr_accessible :address_id, :analyst_id, :arrested, :backup_file, :crime_id, :description
  attr_accessible :drugs_id, :event_date, :hour, :id, :observations, :place_id, :priority, :source
  attr_accessible :status_event_id, :suspects, :township_id, :vehicles, :victims, :weapons_id, :zone_id
  
  belongs_to :status
  #  has_and_belongs_to_many :person
  belongs_to :priorities
end
