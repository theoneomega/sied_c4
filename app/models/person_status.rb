class PersonStatus < ActiveRecord::Base
  attr_accessible :description, :id
  has_many :person, :dependent => :destroy
end
