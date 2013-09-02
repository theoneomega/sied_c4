class Weapon < ActiveRecord::Base
  attr_accessible :brand, :caliber, :id, :model, :person_id, :serial_number, :weapon, :weapon_type_id
  belongs_to :weapons_type
  belongs_to :person
end
