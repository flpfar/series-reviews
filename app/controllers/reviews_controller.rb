class ReviewsController < ApplicationController
  def new; end

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
    params.require(:review).permit(:title, :text, :image, :categories_ids)
  end
end
