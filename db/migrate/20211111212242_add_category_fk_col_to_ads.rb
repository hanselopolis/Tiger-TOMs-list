class AddCategoryFkColToAds < ActiveRecord::Migration[6.1]
  def change
    add_reference :ads, :category, foreign_key: true
  end
end
