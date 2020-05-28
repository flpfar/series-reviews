FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "New Category #{n + rand(100..2000)}" }
    sequence(:priority) { |n| (n + rand(100..2000)) }
  end
end
