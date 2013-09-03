class CriminalGroup < ActiveRecord::Base
  attr_accessible :area_id, :description, :drug_id, :id, :vehicle_id, :weapon_id
  has_many :vehicles_criminalgroup, :dependent => :destroy
  has_many :vehicles, :through => :vehicles_criminalgroup
  has_many :weapon_criminalgroup, :dependent => :destroy
  has_many :weapon, :through => :weapon_criminalgroup
  
  accepts_nested_attributes_for :vehicles_criminalgroup, :allow_destroy => true
  accepts_nested_attributes_for :weapon_criminalgroup, :allow_destroy => true
end
