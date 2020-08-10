class SessionController < ApplicationController
  def new
    @user = User.new
  end # new

  def create
    @user = User.find_by email: params[:email]

  end #login check

  def destroy
    # session[:user_id] = nil #Logs out the user.
    redirect_to login_path
  end

end # session controller
