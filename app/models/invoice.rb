class Invoice < ActiveRecord::Base
  belongs_to :order
  has_many :invoice_products
end
