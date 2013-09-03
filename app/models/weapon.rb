class Weapon < ActiveRecord::Base
  attr_accessible :brand, :caliber, :id, :model, :person_id, :serial_number, :weapon, :weapon_type_id, :type
  belongs_to :weapon_type
  belongs_to :person
  has_many :weapon_criminalgroup, :dependent => :destroy
  
  def fulldescription
    self.brand + " " + self.model + " " + self.caliber
  end
end
