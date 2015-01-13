# == Schema Information
#
# Table name: invoices
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Invoice < ActiveRecord::Base
  belongs_to :order
  has_many :invoice_products
end
