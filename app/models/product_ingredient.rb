# == Schema Information
#
# Table name: product_ingredients
#
#  id            :integer          not null, primary key
#  product_id    :integer
#  ingredient_id :integer
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ProductIngredient < ActiveRecord::Base
  belongs_to :product
  belongs_to :ingredient
end
