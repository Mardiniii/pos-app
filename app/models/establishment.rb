# == Schema Information
#
# Table name: establishments
#
#  id            :integer          not null, primary key
#  name          :string
#  address       :string
#  phone         :string
#  tables_number :integer
#  seats_number  :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Establishment < ActiveRecord::Base
  belongs_to :user
  has_many :establishment_ingredients
  has_many :products
  has_many :orders
end
