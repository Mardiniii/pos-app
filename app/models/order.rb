# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  table            :integer
#  establishment_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :establishment
  has_many :order_products, dependent: :destroy
  has_many :invoice, dependent: :destroy
end
