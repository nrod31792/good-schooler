module HomeHelper
  def boldify(str)
    "<strong>#{str[0..2]}</strong>".html_safe
  end
end
