class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authorize

protected

  def authorize
    unless current_user
      redirect_to :controller => "sessions", :action => "new", notice: "Please log in"
    end
  end

private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

end
