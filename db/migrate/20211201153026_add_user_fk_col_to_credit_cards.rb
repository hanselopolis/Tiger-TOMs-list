class AddUserFkColToCreditCards < ActiveRecord::Migration[6.1]
  def change
    add_reference :credit_cards, :user, foreign_key: true
  end
end
