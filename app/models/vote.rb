class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :review

  validates :user, :review, presence: true
  validates :user, uniqueness: { scope: :review }
end
