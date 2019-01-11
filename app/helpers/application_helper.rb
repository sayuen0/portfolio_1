module ApplicationHelper

  def page_title
    title = "Torimai's portfolio"
    if @page_title
      title = @page_title + " | " + title
    end
    title
  end
end
