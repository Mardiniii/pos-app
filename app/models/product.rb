# == Schema Information
#
# Table name: products
#
#  id                    :integer          not null, primary key
#  name                  :string
#  precio                :integer
#  category_id           :integer
#  establishment_id      :integer
#  product_ingredient_id :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :establishment
  has_many :product_ingredients
  has_many :order_products
  has_many :invoice_products
end
