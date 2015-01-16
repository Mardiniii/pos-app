# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  precio           :integer
#  establishment_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  categorie_id     :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
