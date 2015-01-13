# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#  name                   :string
#  identification_number  :string
#  last_name              :string
#  phone                  :string
#  cellphone              :string
#  address                :string
#  state_id               :integer
#  city_id                :integer
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:Administracion, :Ordenes, :Cocina]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :last_name, :identification_number, :address,:city,:state,:cellphone, :phone, :email, :password, :password_confirmation, presence: true
  has_many :establishments
  belongs_to :city
  belongs_to :state
end
