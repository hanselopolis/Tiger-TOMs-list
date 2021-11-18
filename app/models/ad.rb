# == Schema Information
#
# Table name: ads
#
#  id          :bigint           not null, primary key
#  addr        :string
#  city        :string
#  contact     :string
#  description :string
#  email       :string
#  location    :string
#  phone       :string
#  price       :float
#  state       :string
#  status      :string
#  title       :string
#  zip         :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#  purchase_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_ads_on_category_id  (category_id)
#  index_ads_on_purchase_id  (purchase_id)
#  index_ads_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (purchase_id => purchases.id)
#  fk_rails_...  (user_id => users.id)
#
class Ad < ApplicationRecord

    has_many_attached :images

    belongs_to(
        :category,
        class_name: 'Category',
        foreign_key: 'category_id',
        inverse_of: :ads
    )

    belongs_to(
        :user,
        class_name: 'User',
        foreign_key: 'user_id',
        inverse_of: :ads
    )

    belongs_to(
        :purchase,
        class_name: 'Purchase',
        foreign_key: 'purchase_id',
        inverse_of: :ads
    )
end
