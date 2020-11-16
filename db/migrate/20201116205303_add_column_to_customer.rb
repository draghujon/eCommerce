class AddColumnToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :province, :string
  end
end
