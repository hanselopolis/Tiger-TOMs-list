class PurchasesRemoveExpMoExpYrAddExpDate < ActiveRecord::Migration[6.1]
  def change
    add_column :purchases, :card_exp_date, :date
    remove_column :purchases, :card_exp_mo, :integer
    remove_column :purchases, :card_exp_yr, :integer 
  end  
end
