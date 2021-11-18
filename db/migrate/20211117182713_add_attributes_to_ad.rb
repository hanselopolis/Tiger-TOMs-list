class AddAttributesToAd < ActiveRecord::Migration[6.1]
  def change
    add_column :ads, :email, :string
    add_column :ads, :phone, :string
    add_column :ads, :addr, :string
    add_column :ads, :city, :string
    add_column :ads, :state, :string
    add_column :ads, :zip, :integer
  end
end
