class UsersController < ApplicationController
  
  before_filter :set_page_title 
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if(@user.save)
      redirect_to new_session_url
    else
      render :action => 'new'
    end
  end
  
  protected
  
  def set_page_title
    @page_title = "User management"
  end
end
