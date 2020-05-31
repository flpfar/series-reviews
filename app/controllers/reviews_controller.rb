class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @review = Review.new
    @categories = Category.all.order(:name)
  end

  def create
    @review = current_user.reviews.new(review_params)
    if @review.save
      flash[:notice] = 'Review was successfully created.'
      redirect_to root_path
    else
      flash.now[:alert] = 'Review was NOT successfully created.'
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :text, :image, category_ids: [])
  end
end
