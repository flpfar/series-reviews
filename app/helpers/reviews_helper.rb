module ReviewsHelper
  def show_owner_controllers(user_id, review_id)
    return unless current_user.id == user_id

    edit = link_to((fa_icon 'pencil'), edit_review_path(review_id), class: 'owner-controllers mr-2')
    delete = link_to((fa_icon 'trash'), review_path(review_id), method: :delete,
                                                                data: { confirm: 'Delete review?' },
                                                                class: 'owner-controllers')

    edit + delete
  end
end
