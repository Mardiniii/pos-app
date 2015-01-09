class CreateInvoiceProducts < ActiveRecord::Migration
  def change
    create_table :invoice_products do |t|
      t.references :invoice, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :invoice_products, :invoices
    add_foreign_key :invoice_products, :products
  end
end
