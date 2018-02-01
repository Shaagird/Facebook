# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  mobile     :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  dob        :datetime
#  gender     :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
