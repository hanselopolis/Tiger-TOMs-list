# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  address1   :string
#  address2   :string
#  address3   :string
#  bio        :string
#  city       :string
#  country    :string
#  email      :string
#  first_name :string
#  last_name  :string
#  phone      :string
#  state      :string
#  username   :string
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    has_many(
        :ads,
        class_name: 'Ad',
        foreign_key: 'user_id',
        inverse_of: :user,
        dependent: :destroy
    )

end
