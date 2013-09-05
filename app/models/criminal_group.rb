class CriminalGroup < ActiveRecord::Base
  attr_accessible :area_id, :description, :drug_id, :id, :vehicle_id, :weapon_id
  attr_accessible :vehicles_attributes, :criminal_weapon_attributes , :weapons_attributes
#  has_many :vehicles, :through => :person
  has_many :criminal_weapon, :dependent => :destroy
  has_many :weapons, :through => :criminal_weapon
  
#  accepts_nested_attributes_for :vehicles, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :criminal_weapon, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :weapons, :allow_destroy => true, :reject_if => :all_blank
end
