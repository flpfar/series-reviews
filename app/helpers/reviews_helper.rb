module ReviewsHelper
  def show_owner_controllers(id)
    if current_user.id == id
      link_to (fa_icon 'trash'), '#', class: 'owner-controllers'
    else
      ''
    end
  end
end
