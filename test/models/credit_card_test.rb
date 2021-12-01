# == Schema Information
#
# Table name: credit_cards
#
#  id         :bigint           not null, primary key
#  card_type  :string
#  company    :string
#  cvv        :integer
#  exp_date   :date
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_credit_cards_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class CreditCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
