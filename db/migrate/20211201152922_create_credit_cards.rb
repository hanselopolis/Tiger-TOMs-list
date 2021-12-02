class CreateCreditCards < ActiveRecord::Migration[6.1]
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.string :company
      t.string :type
      t.string :number
      t.integer :cvv
      t.date :exp_date

      t.timestamps
    end
  end
end
