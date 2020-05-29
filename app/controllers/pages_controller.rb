class PagesController < ApplicationController
  def index
    @featured_review = Review.featured
    @categories = Category.ordered_by_priority
  end
end
