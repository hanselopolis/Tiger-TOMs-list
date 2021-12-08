# == Schema Information
#
# Table name: conversations
#
#  id          :bigint           not null, primary key
#  initial_msg :string
#  listener    :string
#  starter     :string
#  subject     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_conversations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class ConversationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
