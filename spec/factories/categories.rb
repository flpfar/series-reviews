FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "New Category #{n + rand(100..9_999_999)}" }
    sequence(:priority) { |n| (n + rand(100..9_999_999)) }
  end
end
