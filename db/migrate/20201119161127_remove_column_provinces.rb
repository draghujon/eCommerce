class RemoveColumnProvinces < ActiveRecord::Migration[6.0]
  def change
    rename_column :provinces, :taxes, :tax_1
    add_column :provinces, :tax_2, :decimal
  end
end
