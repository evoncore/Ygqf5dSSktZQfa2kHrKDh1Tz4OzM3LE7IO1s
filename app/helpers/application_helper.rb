module ApplicationHelper

  def full_title(page_title)
    base_title = "RoR"
    if page_title.empty?
      "#{base_title} | New Page"
    else
      "#{base_title} | #{page_title}"
    end
  end

end