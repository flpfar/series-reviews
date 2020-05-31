class CategoriesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def show
    @category = Category.find_by(id: params[:id])
    if @category
      @reviews = @category.reviews.includes(:votes).includes(:author).order(created_at: :desc)
    else
      flash[:alert] = 'Category not found'
      redirect_to root_path
    end
  end
end
