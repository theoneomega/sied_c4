class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :details, :id, :model, :person_id, :plate, :serial_numero, :status, :stolen, :sub_brand
end
