# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Category < ApplicationRecord

    has_one_attached :image

    has_many(
        :ads,
        class_name: 'Ad',
        foreign_key: 'category_id',
        inverse_of: :category,
        dependent: :destroy
    )

end
