class Category < ApplicationRecord
  validates :name, :priority, presence: true, uniqueness: true
  validates :name, length: { in: 1..20 }
end
