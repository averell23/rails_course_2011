class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by_username(params[:username])
    if(@user && @user.password == params[:password])
      session[:logged_in] = true
      session[:current_user_name] = @user.username
      flash[:notice] = "User logged in"
      redirect_to params[:redirect_to] || movies_url
    else
      flash[:notice] = "Wrong username and password"
      render :action => 'new'
    end
  end
  
  def destroy
    session[:logged_in] = false
    flash[:notice] = "User logged out"
    redirect_to movies_url
  end
  
end
