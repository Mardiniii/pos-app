# == Schema Information
#
# Table name: invoice_products
#
#  id               :integer          not null, primary key
#  invoice_id       :integer
#  order_product_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class InvoiceProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
