class CreatePersonStatuses < ActiveRecord::Migration
  def change
    create_table :person_statuses do |t|
      t.integer :id
      t.string :description

      t.timestamps
    end
  end
end
