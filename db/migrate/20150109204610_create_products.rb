class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :precio
      t.references :category, index: true
      t.references :establishment, index: true
      t.integer :product_ingredient_id

      t.timestamps null: false
    end
    add_foreign_key :products, :categories
    add_foreign_key :products, :establishments
  end
end
