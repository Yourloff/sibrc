module ApplicationHelper
  def alert_class(key)
    case key
    when "success"
      "success"
    when "info"
      "info"
    when "warning"
      "warning"
    when "danger"
      "danger"
    else
      key
    end
  end
end
