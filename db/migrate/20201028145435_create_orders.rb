class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_date
      t.string :ship_name
      t.string :ship_address
      t.string :ship_date
      t.string :ship_postal
      t.string :ship_country
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end