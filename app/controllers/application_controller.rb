class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
     if !user_signed_in? || !current_user.admin?
      flash[:notice] = "Not logged in"
      
      redirect_to :action => 'index'
    end
  end 


end
