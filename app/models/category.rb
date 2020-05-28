class Category < ApplicationRecord
  has_and_belongs_to_many :reviews

  before_destroy do
    reviews.each(&:destroy)
  end

  validates :name, :priority, presence: true, uniqueness: true
  validates :name, length: { in: 1..20 }
end
