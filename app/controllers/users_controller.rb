class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'User was successfully created.'
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
