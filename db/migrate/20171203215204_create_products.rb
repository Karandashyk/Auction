class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :location_id
      t.string :mode
      t.string :category
      t.integer :start_price
      t.string :description

      t.timestamps
    end
  end
end


# add_column :products, :location_id, :integer
# add_column :products, :mode, :string
# add_column :products, :category, :string
# add_column :products, :start_price, :integer
# add_column :products, :description, :string