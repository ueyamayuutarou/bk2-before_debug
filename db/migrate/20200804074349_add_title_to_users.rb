class AddTitleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :title, :integer
  end
end
