class Category < ApplicationRecord
  has_and_belongs_to_many :reviews

  before_destroy do
    reviews.each(&:destroy)
  end

  validates :name, :priority, presence: true, uniqueness: true
  validates :name, length: { in: 1..20 }

  def self.ordered_by_priority
    Category.all.order(:priority)
  end

  def most_recent_review
    reviews.order(created_at: :desc).limit(1).first
  end
end
