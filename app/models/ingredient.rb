class Ingredient < ActiveRecord::Base
	has_many :establishment_ingredients
	has_many :product_ingredients
end
