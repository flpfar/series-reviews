module CategoriesHelper
  def vote_or_unvote_btn(review)
    if review.votes.any? { |vote| vote.user_id == current_user.id }
      link_to 'Unvote', vote_path(review.id), method: :delete, class: 'vote-link'
    else
      link_to 'Vote', vote_path(review.id), method: :post, class: 'vote-link'
    end
  end
end
