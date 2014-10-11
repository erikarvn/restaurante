class RemoveUserIdFromRol < ActiveRecord::Migration
  def change
    remove_column :rols, :user_id, :integer
  end
end
