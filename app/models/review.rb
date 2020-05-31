class Review < ApplicationRecord
  attr_accessor :categories_ids

  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories do
    def <<(category)
      super category unless include?(category)
    end
  end

  before_validation do
    categories << Category.where(id: @categories_ids) unless !@categories_ids || @categories_ids.empty?
    image = 'default.png' if image.nil? || image.empty?
  end

  validates :author, :title, :text, presence: true
  validates :title, length: { in: 1..120 }, uniqueness: { scope: :author }
  validates :categories, presence: true

  def self.featured
    featured_id = Vote.group(:review_id).order(count: :desc).count.first[0]
    Review.find(featured_id)
  end
end
