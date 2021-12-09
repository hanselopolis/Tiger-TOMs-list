class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :starter
      t.string :listener
      t.string :initial_msg

      t.timestamps
    end
  end
end
