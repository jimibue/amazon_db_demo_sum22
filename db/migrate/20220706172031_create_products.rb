class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :retail_price
      t.integer :quantity_in_stock
      t.belongs_to :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
