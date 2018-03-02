class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.decimal :price
      t.string :description
      t.string :img
      t.integer :amount

      t.timestamps
    end
  end
end
