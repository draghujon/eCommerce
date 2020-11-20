class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.integer :admin_user, default: 0
    end
  end
end
