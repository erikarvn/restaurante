class CreateReceta < ActiveRecord::Migration
  def change
    create_table :receta do |t|
      t.string :nombre
      t.text :preparacion
      t.text :ingredientes

      t.timestamps
    end
  end
end
