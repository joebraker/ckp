# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def current_section?(urls, params = {})
    urls = Array(urls)
    urls.any? do |url|
      if params[:exact]
        request.path == url
      else
        request.path =~ /\A#{url}/
      end
    end
  end
end
