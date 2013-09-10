class Event < ActiveRecord::Base
  attr_accessible :analist_id, :area_id, :backup_file, :crime_id, :description, :detained, :detained_id, :drug_id, :drugs, :event_date, :id, :interior_number, :locality, :observations, :place_id, :priority_id, :source, :status_id, :street, :suburb, :suspect_id, :suspects, :township_id, :vehicle_id, :vehicles, :victim_id, :victims, :weapon_id, :weapons
end
