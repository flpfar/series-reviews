class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end

  def create
    user = User.find_by(name: params[:session][:username])

    if user
      session[:user_id] = user.id
    else
      flash[:alert] = 'Login failed. Username not found.'
    end
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
