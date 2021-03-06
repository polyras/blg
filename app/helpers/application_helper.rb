module ApplicationHelper
  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      content_tag "notextile", CodeRay.scan($3, $2).div(:css => :class).html_safe
    end
  end
  
  def error_messages(target)
    render 'shared/errors', :target => target
  end
end
