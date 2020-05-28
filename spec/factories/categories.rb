FactoryBot.define do
  factory :category do
    name { "New Category #{rand(15..2000)}" }
    priority { rand(15..2000) }
  end
end
