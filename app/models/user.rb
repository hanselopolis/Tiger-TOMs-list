# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address1               :string
#  address2               :string
#  address3               :string
#  bio                    :string
#  city                   :string
#  country                :string
#  email                  :string
#  encrypted_password     :string
#  first_name             :string
#  last_name              :string
#  phone                  :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  state                  :string
#  username               :string
#  zip                    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
end
