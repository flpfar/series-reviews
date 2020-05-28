FactoryBot.define do
  factory :review do
    author { create(:user) }
    title { 'Stranger Things' }
    text { 'This is a review about Stranger Things' }
    image { 'https://upload.wikimedia.org/wikipedia/commons/3/38/Stranger_Things_logo.png' }
    created_at { '2020-05-27 18:45:05' }
    categories { create_list(:category, 5) }
  end
end
