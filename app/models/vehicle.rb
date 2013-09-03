class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :details, :id, :line, :model, :person_id, :plate, :serial_number, :status, :stolen
  attr_accessible :fulldescription
  belongs_to :person
  has_many :vehicles_criminalgroup, :dependent => :destroy  
  
  validates :person_id, :presence => true
  validates :identifier, :uniqueness => true
  
  def fulldescription
    self.brand + " " + self.line + " " + self.model.to_s + " " + color
  end
end
