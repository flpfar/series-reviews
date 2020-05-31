class CategoriesController < ApplicationController
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
