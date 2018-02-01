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

class User < ApplicationRecord
	has_many :addresses, dependent: :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :mobile, presence: true
	validates :password, presence: true
	validates :gender, presence:true
	validates :dob, presence:true


	def validate_date_of_birth
	#	lowest_date = '1920-01-01'
	#	highest_date = Time.now

		 dob < Date.today && dob > Date.today.year - 120 
    #input_date.between?(lowest_date, highest_date)
	end

  def check_if_name_contains_numbers

  	 /[0-9]/.match(first_name).nil?
  	 
  end
	# def check_if_name_contains_numbers
 #   x = 0
 #   flag = false
 #   name = first_name
 #   loop do
 # 	    y = x
 # 	   if name.include? y.to_s
 # 	   	  flag = true
 # 		    break
 # 	   end
 # 	   if x == 9
 # 		    break
 # 	   end
 # 	   x += 1
 #    end
 #   return flag
 #  end
end
