class AddCulumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :imageName, :string
    add_column :users, :imageBinary, :binary
    add_column :users, :adminFlag, :boolean
  end
end
