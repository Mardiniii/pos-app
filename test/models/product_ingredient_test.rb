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

require 'test_helper'

class ProductIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
