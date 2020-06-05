class PagesController < ApplicationController
  def index
    if current_user
      @featured_review = Review.featured
      @categories = Category.ordered_by_priority
    else
      redirect_to signin_path
    end
  end
end
