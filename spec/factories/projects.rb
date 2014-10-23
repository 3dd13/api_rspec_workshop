FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "name#{n}"}
  end
end
