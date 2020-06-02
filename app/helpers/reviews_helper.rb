module ReviewsHelper
  def show_owner_controllers(user_id, review_id)
    return unless current_user.id == user_id

    edit = link_to((fa_icon 'pencil'), edit_review_path(review_id), class: 'owner-controllers mr-2')
    delete = link_to((fa_icon 'trash'), review_path(review_id), method: :delete,
                                                                data: { confirm: 'Delete review?' },
                                                                class: 'owner-controllers')

    edit + delete
  end

  def image_url_generator(url)
    return '/assets/' + url if url == 'default.png'

    url
  end

  def columns_content_image_order(review, index)
    image = render partial: 'review_image', locals: { review: review }
    content = render partial: 'review_content', locals: { review: review }
    return content + image if ((index + 2) % 4).zero? || ((index + 1) % 4).zero?

    image + content
  end
end
