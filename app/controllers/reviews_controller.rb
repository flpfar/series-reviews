class ReviewsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.new(review_params)
    if @review.save
      flash[:notice] = 'Review was successfully created.'
      redirect_to review_path(@review.id)
    else
      flash.now[:alert] = 'Review was NOT successfully created.'
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
    if @review
      unless @review.author_id == current_user.id
        flash[:alert] = 'You are not authorized to edit this review.'
        redirect_to root_path
      end
    else
      flash[:alert] = 'Review not found.'
      redirect_to root_path
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = 'Review was successfully updated.'
      redirect_to review_path(@review.id)
    else
      flash.now[:alert] = 'Review was NOT successfully updated.'
      render :edit
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
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:title, :text, :image, category_ids: [])
  end
end
