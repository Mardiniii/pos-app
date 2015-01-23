class FixingForeingKeyInInvoiceProducts < ActiveRecord::Migration
  def change
  	remove_foreign_key :invoice_products, { :column => :order_product_id }
  	add_foreign_key :invoice_products, :order_products
  end
end
