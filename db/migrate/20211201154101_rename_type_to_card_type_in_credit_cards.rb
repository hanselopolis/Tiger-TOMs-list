class RenameTypeToCardTypeInCreditCards < ActiveRecord::Migration[6.1]
  def change

    rename_column :credit_cards, :type, :card_type

  end
end
