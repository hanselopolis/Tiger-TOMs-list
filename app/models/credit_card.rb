# == Schema Information
#
# Table name: credit_cards
#
#  id         :bigint           not null, primary key
#  card_type  :string
#  company    :string
#  cvv        :integer
#  exp_date   :date
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_credit_cards_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class CreditCard < ApplicationRecord
    validates :name, presence: true
    validates :cvv, presence: true
    validates :exp_date, presence: true
    validates :card_type, presence: true
    validates :number, presence: true
    validates :number, length: { minimum: 16, maximum: 19 }
    
    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :credit_cards,
        optional: true
    )
end
