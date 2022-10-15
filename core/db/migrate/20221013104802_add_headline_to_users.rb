class AddHeadlineToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :headline, :string
  end
end
