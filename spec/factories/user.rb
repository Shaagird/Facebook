#require 'faker'
FactoryBot.define do
 factory :user do
   first_name "Suraj"
   last_name "Jagtap"
   gender "Male"
   email "Suraj@josh.com"
   dob "1994-01-31"
   password "12345"
 end
end