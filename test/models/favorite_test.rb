# == Schema Information
#
# Table name: favorites
#
#  id             :bigint           not null, primary key
#  favorited_type :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  favorited_id   :bigint           not null
#  user_id        :bigint           not null
#
# Indexes
#
#  index_favorites_on_favorited  (favorited_type,favorited_id)
#  index_favorites_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class FavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
