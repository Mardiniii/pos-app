class EstablishmentIngredient < ActiveRecord::Base
  belongs_to :establishment
  belongs_to :ingredient
end
