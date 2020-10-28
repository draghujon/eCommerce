class AddProvToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :province, :string
  end
end
