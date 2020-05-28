class Review < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :author, class_name: 'User'

  validates :author, :title, :text, presence: true
  validates :title, length: { in: 1..120 }, uniqueness: { scope: :author }
  validates :categories, presence: true

  # def tag=(tag) tags << tag unless tags.include?(tag); end
end


# a = Review.new
# a.author = User.first
# a.title = 'New review'
# a.text = 'some text'
# a.valid?
# a.categories << Category.first
# a.valid?