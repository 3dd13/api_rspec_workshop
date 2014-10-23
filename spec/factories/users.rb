FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@example.com"}
    sequence(:auth_token) { |n| "auth_token_#{n}"}
    password "password"
  end
end
