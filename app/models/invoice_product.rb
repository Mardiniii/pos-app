# == Schema Information
#
# Table name: invoice_products
#
#  id         :integer          not null, primary key
#  invoice_id :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceProduct < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :product
end
