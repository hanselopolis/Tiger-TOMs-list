class CreateFavoriteAds < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_ads do |t|

      t.timestamps
    end
  end
end
