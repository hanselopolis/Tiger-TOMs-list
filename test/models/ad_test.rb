# == Schema Information
#
# Table name: ads
#
#  id          :bigint           not null, primary key
#  addr        :string
#  city        :string
#  contact     :string
#  description :string
#  email       :string
#  location    :string
#  phone       :string
#  price       :float
#  purchaser   :integer
#  state       :string
#  status      :string
#  title       :string
#  zip         :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#  purchase_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_ads_on_category_id  (category_id)
#  index_ads_on_purchase_id  (purchase_id)
#  index_ads_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (purchase_id => purchases.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class AdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
