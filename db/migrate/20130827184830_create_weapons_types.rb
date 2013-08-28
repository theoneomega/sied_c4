class CreateWeaponsTypes < ActiveRecord::Migration
  def change
    create_table :weapons_types do |t|
      t.integer :id
      t.string :description

      t.timestamps
    end
  end
end
