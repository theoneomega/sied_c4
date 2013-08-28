class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :id
      t.string :ci
      t.string :first_name
      t.string :last_name1
      t.string :last_name2
      t.string :alias
      t.date :birth_date
      t.string :original
      t.string :gender
      t.boolean :record
      t.string :ocupation
      t.text :onservations
      t.integer :status_id

      t.timestamps
    end
  end
end
