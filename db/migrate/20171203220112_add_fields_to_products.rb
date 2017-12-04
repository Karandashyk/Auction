class AddFieldsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :location_id, :integer
    add_column :products, :mode, :string
    add_column :products, :category, :string
    add_column :products, :start_price, :integer
    add_column :products, :description, :string
  end
end
