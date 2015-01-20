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
	# El enum de comienzo en 0
	enum state: [ :inprocess,:ready,:kitchen, :checking ]
  belongs_to :establishment
  has_many :order_products, dependent: :destroy
  has_many :invoice, dependent: :destroy

  accepts_nested_attributes_for :order_products, allow_destroy: true
end
