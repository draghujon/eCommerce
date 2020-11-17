class RemoveReferenceFromProvinces < ActiveRecord::Migration[6.0]
  def change
    remove_column :provinces, :user_id, :string
  end
end
