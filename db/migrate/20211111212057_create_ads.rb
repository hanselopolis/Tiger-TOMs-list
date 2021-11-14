class CreateAds < ActiveRecord::Migration[6.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :contact
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
