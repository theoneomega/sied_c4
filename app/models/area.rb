class Area < ActiveRecord::Base
  attr_accessible :description, :id
  has_many :events, :dependent => :destroy
  has_many :criminal_groups, :dependent => :destroy
  #has_many :
end
