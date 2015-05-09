# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    remember_token User.encrypt(User.new_remember_token)
  end
end
