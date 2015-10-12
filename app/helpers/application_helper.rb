module ApplicationHelper
  def active_tab(controller, action)
    if params[:controller] == controller && action.include?(params[:action])
      'active'
    else
      ''
    end
  end
end
