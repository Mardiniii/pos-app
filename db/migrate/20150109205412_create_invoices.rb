class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :invoices, :orders
  end
end
