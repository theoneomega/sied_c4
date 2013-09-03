class CreateWeaponCriminalgroups < ActiveRecord::Migration
  def change
    create_table :weapon_criminalgroups do |t|
      t.integer :weapon_id
      t.integer :criminal_group_id

      t.timestamps
    end
  end
end
