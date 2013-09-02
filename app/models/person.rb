class Person < ActiveRecord::Base
  attr_accessible :alias, :birth_date, :ci, :first_name, :genre, :id, :last_name1, :last_name2, :observations, :originative, :profession, :record, :status_id, :fullname
  has_many :vehicles
  belongs_to :status
  
  def fullname
    first_name.titlecase + " " + last_name1.titlecase + " " + last_name2.titlecase
  end
end