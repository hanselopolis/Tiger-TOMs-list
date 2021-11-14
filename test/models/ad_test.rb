# == Schema Information
#
# Table name: ads
#
#  id          :bigint           not null, primary key
#  contact     :string
#  description :string
#  location    :string
#  price       :float
#  status      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#
# Indexes
#
#  index_ads_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
require "test_helper"

class AdTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
