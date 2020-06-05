class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:show]

  def show
    @user = User.find_by(id: params[:id])
    if @user
      @reviews = @user.reviews.includes(:votes).includes(:author).order(created_at: :desc).includes(:categories)
    else
      flash[:alert] = 'User not found'
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User was successfully created.'
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:alert] = 'User was NOT successfully created.'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
