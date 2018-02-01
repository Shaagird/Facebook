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

require 'rails_helper'

RSpec.describe User do
	it 'Validates the Date Of Birth is not greater than todays Date..' do
		user = User.new
		user.dob = '2018-01-30'
		result = user.validate_date_of_birth
		expect(result).to eq(true)

		user.dob = '2018-04-28'
		result = user.validate_date_of_birth
		expect(result).to eq(false)
	end

	# it 'Validates the Date Of Birth is not greater than todays Date..' do
	# 	user = User.new
	# 	user.dob = '2018-04-28'
	# 	result = user.validate_date_of_birth
	# 	expect(result).to eq(false)
	# end

	it 'Validates if name contains numbers in it' do
    user = User.new
    user.first_name = "Suraj"
    result = user.check_if_name_contains_numbers
    expect(result).to eq(true)

    user.first_name = "Suraj123"
    result = user.check_if_name_contains_numbers
    expect(result).to eq(false)
  end

  # it 'Validates if name contains numbers in it' do
  #   user = User.new
  #   user.first_name = "Suraj123"
  #   result = user.check_if_name_contains_numbers
  #   expect(result).to eq(false)
  # end

end
