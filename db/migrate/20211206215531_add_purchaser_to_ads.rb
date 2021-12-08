class AddPurchaserToAds < ActiveRecord::Migration[6.1]
  def change
    add_column :ads, :purchaser, :integer
  end
end
