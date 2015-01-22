# == Schema Information
#
# Table name: establishments
#
#  id                  :integer          not null, primary key
#  name                :string
#  address             :string
#  phone               :string
#  tables_number       :integer
#  seats_number        :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Establishment < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
	validates :name, :address, :phone, :tables_number,:seats_number,:user_id, presence: true
  belongs_to :user
  has_many :establishment_ingredients, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
end
