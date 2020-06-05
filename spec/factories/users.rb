FactoryBot.define do
  factory :user do
    name { 'flpfar' }

    factory :user_random do
      sequence(:name) { |n| "User #{n}" }
    end
  end
end
