class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table
      t.references :establishment, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :establishments
  end
end
