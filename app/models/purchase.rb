# == Schema Information
#
# Table name: purchases
#
#  id            :bigint           not null, primary key
#  bill_address1 :string
#  bill_address2 :string
#  bill_address3 :string
#  bill_city     :string
#  bill_company  :string
#  bill_country  :string
#  bill_email    :string
#  bill_name     :string
#  bill_phone    :string
#  bill_postal   :string
#  bill_state    :string
#  card_cvv      :integer
#  card_exp_mo   :integer
#  card_exp_yr   :integer
#  card_number   :string
#  card_type     :string
#  ship_address1 :string
#  ship_address2 :string
#  ship_address3 :string
#  ship_city     :string
#  ship_company  :string
#  ship_country  :string
#  ship_email    :string
#  ship_name     :string
#  ship_phone    :string
#  ship_postal   :string
#  ship_state    :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint
#
# Indexes
#
#  index_purchases_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Purchase < ApplicationRecord

    has_one(
        :ads,
        class_name: 'Ad',
        foreign_key: 'purchase_id',
        inverse_of: :purchase,
        dependent: :destroy
    )

   belongs_to(
      :user,
      class_name: 'User',
      foreign_key: 'user_id',
      inverse_of: :purchases
   )

    validates :ship_name, presence: true
    validates :ship_address1, presence: true
    validates :ship_city, presence: true
    validates :ship_state, presence: true
    validates :ship_country, presence: true
    validates :ship_postal, presence: true
    validates :bill_name, presence: true
    validates :bill_address1, presence: true
    validates :bill_city, presence: true
    validates :bill_state, presence: true
    validates :bill_country, presence: true
    validates :bill_postal, presence: true
    validates :card_number, presence: true
    validates :card_exp_mo, presence: true
    validates :card_exp_yr, presence: true
    validates :card_cvv, presence: true
    validates :card_type, presence: true
    
end

