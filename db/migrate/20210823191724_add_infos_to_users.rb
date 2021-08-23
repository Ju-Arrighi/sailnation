class AddInfosToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_num, :string
    add_column :users, :bio, :text
  end
end
