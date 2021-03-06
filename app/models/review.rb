class Review < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, dependent: :destroy
  has_and_belongs_to_many :categories do
    def <<(category)
      super category unless include?(category)
    end
  end

  before_save do
    self.image = 'default.png' if image.nil? || image.empty?
  end

  validates :author, :title, :text, presence: true
  validates :title, length: { in: 1..120 }, uniqueness: { scope: :author }
  validates :categories, presence: true
  validates_format_of :image, with: /(^http.+\.(gif|jpe?g|png)$)|^(default.png)/,
                              message: 'Invalid image URL. Should be like https://example.com/image.jpg',
                              allow_blank: true

  def self.featured
    votes_ordered = Vote.group(:review_id).order(count: :desc).count.first
    return Review.last if votes_ordered.nil?

    featured_id = votes_ordered[0]
    Review.find(featured_id)
  end
end
