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
	validates :name, :address, :phone, :tables_number,:seats_number,:user_id, presence: true
  belongs_to :user
  has_many :establishment_ingredients, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
end
