FactoryGirl.define do
  pw = "This is my user test sentence."

  factory :user do
    username "Big Head"
    sequence(:email){|n| "user#{n}@PiedPiper.com"}
    password pw
    password_confirmation pw
  end
end
