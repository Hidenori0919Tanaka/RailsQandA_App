class AddCulumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :image_name, :string
    add_column :users, :image_binary, :binary
    add_column :users, :admin_flag, :boolean
  end
end
