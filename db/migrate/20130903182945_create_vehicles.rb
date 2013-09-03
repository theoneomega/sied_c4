class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :id
      t.string :brand
      t.string :line
      t.integer :model
      t.string :plate
      t.string :serial_number
      t.string :color
      t.boolean :stolen
      t.string :status
      t.text :details
      t.integer :person_id

      t.timestamps
    end
  end
end
