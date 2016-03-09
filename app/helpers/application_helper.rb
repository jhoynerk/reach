module ApplicationHelper
  # Returns the correct class to show messages with bootstrap
  def flash_class(level)
    case level
    when 'notice'  then 'card-panel blue'
    when 'success' then 'card-panel green'
    when 'alert'   then 'card-panel yellow'
    when 'error'   then 'card-panel red'
    else 'card-panel blue'
    end
  end
end
