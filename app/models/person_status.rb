class PersonStatus < ActiveRecord::Base
  attr_accessible :description, :id
  belongs_to :person
end
