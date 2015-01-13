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

class EstablishmentIngredient < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :ingredient
end
