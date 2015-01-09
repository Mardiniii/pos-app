class Order < ActiveRecord::Base
  belongs_to :establishment
  has_many :order_products
  has_many :invoice
end
