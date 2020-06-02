class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
  end

  def redirect_if_not_logged_in
    redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user
  end
end
