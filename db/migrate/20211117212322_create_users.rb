class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :bio
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip

      t.timestamps
    end
  end
end
