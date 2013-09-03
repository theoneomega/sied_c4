class CreateVehiclesCriminalgroups < ActiveRecord::Migration
  def change
    create_table :vehicles_criminalgroups do |t|
      t.integer :vehicle_id
      t.integer :criminal_group_id

      t.timestamps
    end
  end
end
