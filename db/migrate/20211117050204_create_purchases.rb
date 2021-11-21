class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :ship_name
      t.string :ship_company
      t.string :ship_address1
      t.string :ship_address2
      t.string :ship_address3
      t.string :ship_city
      t.string :ship_state
      t.string :ship_country
      t.string :ship_postal
      t.string :ship_phone
      t.string :ship_email

      t.string :bill_name
      t.string :bill_company
      t.string :bill_address1
      t.string :bill_address2
      t.string :bill_address3
      t.string :bill_city
      t.string :bill_state
      t.string :bill_country
      t.string :bill_postal
      t.string :bill_phone
      t.string :bill_email

      t.string :card_type
      t.integer :card_number
      t.integer :card_exp_mo
      t.integer :card_exp_yr
      t.integer :card_cvv

      t.timestamps
    end
  end
end
