FactoryBot.define do
  factory :category do
    # name { "New Category #{rand(15..2000)}" }
    sequence(:name) { |n| "New Category #{n}" }
    sequence(:priority) { |n| (200 + n) }
  end
end
