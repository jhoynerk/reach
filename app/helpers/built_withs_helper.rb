module BuiltWithsHelper
  def display_social_link(title, link)
    if link 
      content_tag(:div, :class => "chip") do
        link_to title, "http://#{link}", target: "blank"
      end
    end
  end

end
