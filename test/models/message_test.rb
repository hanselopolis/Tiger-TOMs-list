# == Schema Information
#
# Table name: messages
#
#  id              :bigint           not null, primary key
#  author          :string
#  body            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  conversation_id :bigint
#
# Indexes
#
#  index_messages_on_conversation_id  (conversation_id)
#
# Foreign Keys
#
#  fk_rails_...  (conversation_id => conversations.id)
#
require "test_helper"

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
