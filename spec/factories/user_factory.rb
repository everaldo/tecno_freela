FactoryGirl.define do
  sequence(:email) {|n| "user#{n}@example.com" }

  factory :user do
    email { generate(:email) }
    password "superpass"
    password_confirmation "superpass"
  end
end
