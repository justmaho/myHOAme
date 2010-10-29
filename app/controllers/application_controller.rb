class ApplicationController < ActionController::Base
  protect_from_forgery   
  
  layout :layout_by_resource

  def layout_by_resource
    if devise_controller?
      "devise_pages"
    elsif pages_controller?
      "static_pages"
    else
      "application"
    end
  end
  
  private 
  def stored_location_for(resource_or_scope)
    nil
  end

  def after_sign_in_path_for(resource_or_scope)
    dashboard_path(current_user.id)
  end
end
