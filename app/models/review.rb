class Review < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories do
    def <<(category)
      super category unless include?(category)
    end
  end
  belongs_to :author, class_name: 'User'

  validates :author, :title, :text, presence: true
  validates :title, length: { in: 1..120 }, uniqueness: { scope: :author }
  validates :categories, presence: true
end
