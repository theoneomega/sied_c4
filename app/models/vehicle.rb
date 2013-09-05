class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :details, :id, :line, :model, :person_id, :serial_number, :status, :stolen, :plate
  attr_accessible :fulldescription
  belongs_to :person
  #  has_many
  def fulldescription
    self.brand + " " + self.line + " " + self.model.to_s + " "+ self.color
  end
  
end
