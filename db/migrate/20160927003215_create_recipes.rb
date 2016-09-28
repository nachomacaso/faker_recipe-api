class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :ingredient
      t.string :spice
      t.string :measurement
      t.string :instructions
      t.integer :cook_time

      t.timestamps
    end
  end
end
