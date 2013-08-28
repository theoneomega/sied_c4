class Drug < ActiveRecord::Base
  attr_accessible :id, :kind, :observations, :quantity
end
