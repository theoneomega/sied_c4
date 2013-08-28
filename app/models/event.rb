class Event < ActiveRecord::Base
  attr_accessible :address_id, :analyst_id, :arrested, :backup_file, :crime_id, :description, :drugs_id, :event_date, :hour, :id, :observations, :place_id, :priority, :source, :status_event_id, :suspects, :township_id, :vehicles, :victims, :weapons_id, :zone_id
end
