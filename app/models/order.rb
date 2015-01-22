# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  table            :integer
#  establishment_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  state            :integer
#

class Order < ActiveRecord::Base
	# El enum comienza en 0
	enum state: [ :inprocess, :kitchen, :ready, :checking, :done ]
  belongs_to :establishment
  has_many :order_products, dependent: :destroy
  has_many :invoices, dependent: :destroy

  accepts_nested_attributes_for :order_products, allow_destroy: true

  def total
  	total = 0
  	order_products.each do |op|
			total+=op.product.precio
		end
		total
  end

  def pay_value
  	total_paid = 0
  	invoices.each do |invoice|
  		invoice.invoice_products.each do |ip|
  			total_paid+=ip.order_product.product.precio
  		end  		
  	end
  	total_paid
  end
end