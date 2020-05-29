class PagesController < ApplicationController
  def index
    @featured_review = Review.featured_review
    @categories = Category.ordered_by_priority
  end
end
