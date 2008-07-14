# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def flash_for(flash_class)
    sym = flash_class.intern
    if flash[sym]
      content_tag('div', h(flash[sym]), :class => flash_class , :id => flash_class)
    end
  end
end
