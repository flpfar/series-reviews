module ApplicationHelper
  def notice_or_alert(flash_type)
    flash_type == 'alert' ? 'danger' : 'info'
  end
end
