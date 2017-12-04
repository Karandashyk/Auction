class CreateMoney < ActiveRecord::Migration[5.1]
  def change
    create_table :money do |t|
      t.integer :total_sum
      t.integer :reserved_sum

      t.timestamps
    end
  end
end
