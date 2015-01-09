class Establishment < ActiveRecord::Base
  belongs_to :user
  has_many :establishment_ingredients
  has_many :products
  has_many :orders
end
