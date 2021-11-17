# == Schema Information
#
# Table name: purchases
#
#  id            :bigint           not null, primary key
#  bill_address1 :string
#  bill_address2 :string
#  bill_address3 :string
#  bill_city     :string
#  bill_company  :string
#  bill_country  :string
#  bill_email    :string
#  bill_name     :string
#  bill_phone    :string
#  bill_postal   :string
#  bill_state    :string
#  card_cvv      :integer
#  card_exp_mo   :integer
#  card_exp_yr   :integer
#  card_number   :integer
#  card_type     :string
#  ship_address1 :string
#  ship_address2 :string
#  ship_address3 :string
#  ship_city     :string
#  ship_company  :string
#  ship_country  :string
#  ship_email    :string
#  ship_name     :string
#  ship_phone    :string
#  ship_postal   :string
#  ship_state    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint
#
# Indexes
#
#  index_purchases_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
