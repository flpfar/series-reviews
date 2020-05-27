class Review < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :author, :title, :text, presence: true
  validates :title, length: { in: 1..120 }, uniqueness: { scope: :author }
end
