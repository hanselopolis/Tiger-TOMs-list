class CreateCardTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :card_types do |t|
      t.string :cardtype

      t.timestamps
    end
  end
end
