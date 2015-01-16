# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  precio           :integer
#  establishment_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  categorie_id     :integer
#

class Product < ActiveRecord::Base
  belongs_to :categorie
  belongs_to :establishment
  has_many :product_ingredients
  has_many :order_products
  has_many :invoice_products
end
