class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :establishment
end
