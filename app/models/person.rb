class Person < ActiveRecord::Base
  attr_accessible :alias, :birth_date, :ci, :first_name, :gender, :id, :last_name1, :last_name2, :ocupation, :onservations, :original, :record, :status_id
  has_and_belongs_to_many:events
  has_one :person_status
end
