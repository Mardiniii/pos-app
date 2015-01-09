class CreateEstablishments < ActiveRecord::Migration
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :tables_number
      t.integer :seats_number
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :establishments, :users
  end
end
