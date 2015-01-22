# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  precio              :integer
#  establishment_id    :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  categorie_id        :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Product < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :categorie
  belongs_to :establishment
  has_many :product_ingredients, dependent: :destroy
  has_many :order_products
end
