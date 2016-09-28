class ChangeAttributesInRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :meat, :string
    add_column :recipes, :vegetable, :string 
  end
end
