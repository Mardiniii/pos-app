class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :establishment
  has_many :product_ingredients
  has_many :order_products
  has_many :invoice_products
end
