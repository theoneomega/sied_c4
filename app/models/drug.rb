class Drug < ActiveRecord::Base
  attr_accessible :id, :kind, :observations, :quantity
  belongs_to :person
  has_many :criminal_drug, :dependent => :destroy
end
