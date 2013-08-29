class Status < ActiveRecord::Base
  attr_accessible :description, :id, :status_type
  has_many :person
  has_many :event
end
