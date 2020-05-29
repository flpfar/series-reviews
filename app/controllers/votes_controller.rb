class VotesController < ApplicationController
  def create
    vote = Vote.new(user_id: current_user.id, review_id: params[:id])
    if vote.save
      flash[:notice] = 'Vote saved!'
    else
      flash[:alert] = 'Vote failed. Try again.'
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    vote = Vote.find_by(user_id: current_user.id, review_id: params[:id])
    if vote
      vote.destroy
      flash[:notice] = 'Vote removed!'
    else
      flash[:alert] = 'Vote could not be removed. Try again.'
    end
    redirect_back(fallback_location: root_path)
  end
end
