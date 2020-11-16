class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :taxes
      t.references :user

      t.timestamps
    end
  end
end
