class AddSuperadminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_superadmin, :boolean
  end
end
