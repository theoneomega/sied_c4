class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :id
      t.string :priority
      t.date :event_date
      t.text :description
      t.time :hour
      t.integer :victims
      t.integer :arrested
      t.integer :suspects
      t.integer :vehicles
      t.text :observations
      t.string :backup_file
      t.integer :weapons_id
      t.integer :drugs_id
      t.string :source
      t.integer :analyst_id
      t.integer :zone_id
      t.integer :status_event_id
      t.integer :crime_id
      t.integer :township_id
      t.integer :place_id
      t.integer :address_id

      t.timestamps
    end
  end
end
