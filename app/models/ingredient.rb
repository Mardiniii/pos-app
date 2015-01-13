# == Schema Information
#
# Table name: ingredients
#
#  id                  :integer          not null, primary key
#  name                :string
#  unit_of_measurement :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Ingredient < ActiveRecord::Base
	has_many :establishment_ingredients
	has_many :product_ingredients
end
