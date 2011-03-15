# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def logged_in?
    session[:logged_in] == true
  end
  
  def page_title
    @page_title || "A random page"
  end
  
  def render_flash
    render :partial => 'shared/flash_message', :object => flash[:notice]
  end
  
end
