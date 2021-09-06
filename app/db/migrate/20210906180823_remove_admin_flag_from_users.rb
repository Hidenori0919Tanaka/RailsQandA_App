class RemoveAdminFlagFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :adminFlag, :boolean
  end
end
