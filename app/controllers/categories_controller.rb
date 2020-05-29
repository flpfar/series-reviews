class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @reviews = @category.reviews.includes(:votes).order(created_at: :desc)
  end
end
