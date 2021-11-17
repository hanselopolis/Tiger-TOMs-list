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
#  password   :string
#  phone      :string
#  state      :string
#  username   :string
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
