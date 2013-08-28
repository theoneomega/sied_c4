class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :id
      t.string :brand
      t.string :sub_brand
      t.integer :model
      t.string :plate
      t.string :serial_numero
      t.string :color
      t.boolean :stolen
      t.string :status
      t.text :details
      t.string :person_id

      t.timestamps
    end
  end
end
