class Person < ActiveRecord::Base
  attr_accessible :alias, :birth_date, :ci, :first_name, :genre, :id, :last_name1, :last_name2, :observations, :originative, :profession, :record, :status_id, :fullname, :description
  has_many :vehicles, :dependent => :destroy
  belongs_to :status
  has_many :weapons, :dependent => :destroy
  has_many :weapons
  has_many :vehicles
  
  def fullname
    first_name.titlecase + " " + last_name1.titlecase + " " + last_name2.titlecase
  end
end
