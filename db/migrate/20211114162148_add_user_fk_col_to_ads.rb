class AddUserFkColToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :user, foreign_key: true
  end
end
