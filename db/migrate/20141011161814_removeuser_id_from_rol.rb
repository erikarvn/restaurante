class RemoveuserIdFromRol < ActiveRecord::Migration
  def change
  	remove_reference  :rols, :user, index:false
  end
end
