module ReviewsHelper
  def show_owner_controllers(user_id, review_id)
    return unless current_user.id == user_id

    link_to (fa_icon 'trash'), review_path(review_id), method: :delete,
                                                       data: { confirm: 'Delete review?' },
                                                       class: 'owner-controllers'
  end
end
