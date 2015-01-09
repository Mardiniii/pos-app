class CreateProductIngredients < ActiveRecord::Migration
  def change
    create_table :product_ingredients do |t|
      t.references :product, index: true
      t.references :ingredient, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :product_ingredients, :products
    add_foreign_key :product_ingredients, :ingredients
  end
end
