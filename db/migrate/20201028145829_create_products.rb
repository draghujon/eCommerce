class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity_per_unit
      t.decimal :unit_price
      t.integer :unit_stock
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
