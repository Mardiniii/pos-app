class RemoveProductIngredientFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :product_ingredient_id
  end
end
