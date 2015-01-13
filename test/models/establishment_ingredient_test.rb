# == Schema Information
#
# Table name: establishment_ingredients
#
#  id               :integer          not null, primary key
#  establishment_id :integer
#  ingredient_id    :integer
#  quantity         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class EstablishmentIngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
