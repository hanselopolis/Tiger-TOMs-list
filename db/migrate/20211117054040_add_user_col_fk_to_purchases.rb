class AddUserColFkToPurchases < ActiveRecord::Migration[6.1]
  def change
    add_reference :purchases, :user, foreign_key: true
  end
end
