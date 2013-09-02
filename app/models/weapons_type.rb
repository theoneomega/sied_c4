class WeaponsType < ActiveRecord::Base
  attr_accessible :description, :id
  has_many :weapons, :dependent => :destroy
end
