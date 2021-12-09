class AddConversationColFkToMessages < ActiveRecord::Migration[6.1]
  def change
    add_reference :messages, :conversation, foreign_key: true
  end
end
