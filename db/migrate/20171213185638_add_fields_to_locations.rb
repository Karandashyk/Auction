class AddFieldsToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :address, :string
    add_column :locations, :phone, :string
  end
end
