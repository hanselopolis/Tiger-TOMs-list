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
class Conversation < ApplicationRecord
    
    has_many(
        :messages,
        class_name: 'Message',
        foreign_key: 'conversation_id',
        inverse_of: :conversation,
        dependent: :destroy
    )

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :conversations,
        optional: true
    )

    
end
