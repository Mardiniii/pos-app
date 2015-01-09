class CreateEstablishmentIngredients < ActiveRecord::Migration
  def change
    create_table :establishment_ingredients do |t|
      t.references :establishment, index: true
      t.references :ingredient, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :establishment_ingredients, :establishments
    add_foreign_key :establishment_ingredients, :ingredients
  end
end
