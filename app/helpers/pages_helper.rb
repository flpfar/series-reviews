module PagesHelper
  def image_url_generator(url)
    return '/assets/' + url if url == 'default.png'

    url
  end
end
