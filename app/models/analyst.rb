class Analyst < ActiveRecord::Base
  attr_accessible :analyst, :id
  has_many :events, :dependent => :destroy
end
