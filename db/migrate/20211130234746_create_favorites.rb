class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.references :favorited, polymorphic: true, null: false, index: true

      t.timestamps
    end
  end
end
