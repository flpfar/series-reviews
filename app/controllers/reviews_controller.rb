class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @review = Review.new
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

  def destroy
    review = Review.find(params[:id])
    if review
      review.destroy
      flash[:notice] = 'Review was successfully deleted.'
    else
      flash[:alert] = 'Review could not be deleted. Try again later.'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:title, :text, :image, category_ids: [])
  end
end
