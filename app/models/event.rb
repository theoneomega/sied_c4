class Event < ActiveRecord::Base
  attr_accessible :analist_id, :area_id, :backup_file, :crime_id, :description
  attr_accessible :detained, :detained_id, :drug_id, :drugs, :event_date, :id
  attr_accessible :interior_number, :locality, :observations, :place_id, :priority_id
  attr_accessible:source, :status_id, :street, :suburb, :suspect_id, :suspects, :township_id
  attr_accessible :vehicle_id, :vehicles, :victim_id, :victims, :weapon_id, :weapons
  
  belongs_to :priority
  has_many :event_person, :dependent => :destroy
  has_many :person, :through => :event_person
  
  accepts_nested_attributes_for :person, :allow_destroy => true, :reject_if => :all_blank
end
