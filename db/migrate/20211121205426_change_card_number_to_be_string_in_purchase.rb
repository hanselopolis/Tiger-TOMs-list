class ChangeCardNumberToBeStringInPurchase < ActiveRecord::Migration[6.1]
  def change
    change_column :purchases, :card_number, :string
  end
end
