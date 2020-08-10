class SessionController < ApplicationController
  def new
  end # new

  def create
    
  end #login check

  def destroy
    session[:user_id] = nil #Logs out the user.
    redirect_to login_path
  end

end # session controller
