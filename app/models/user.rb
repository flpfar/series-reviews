class User < ApplicationRecord
  has_many :reviews, foreign_key: :author_id

  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }
end
