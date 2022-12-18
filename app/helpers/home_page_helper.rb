module HomePageHelper
  def full_page_title(title='')
    if title.empty?
      'BEAST Hack | Соревнование для студентов'
    else
      "#{title} | BEAST Hack"
    end
  end
end
