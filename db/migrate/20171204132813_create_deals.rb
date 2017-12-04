class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.integer :consumer_id
      t.boolean :state
      t.integer :price
      t.integer :product_id

      t.timestamps
    end
  end
end
