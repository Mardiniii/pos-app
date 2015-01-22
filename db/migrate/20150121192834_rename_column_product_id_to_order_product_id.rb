class RenameColumnProductIdToOrderProductId < ActiveRecord::Migration
  def change
  	rename_column :invoice_products, :product_id, :order_product_id
  end
end
