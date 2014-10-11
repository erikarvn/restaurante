class AddTelfToUser < ActiveRecord::Migration
  def change
    add_column :users, :telf, :integer
  end
end
