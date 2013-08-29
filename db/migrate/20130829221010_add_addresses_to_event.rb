class AddAddressesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :street, :string
    add_column :events, :interior_number, :string
    add_column :events, :colony, :string
    add_column :events, :locality, :string
  end
end
