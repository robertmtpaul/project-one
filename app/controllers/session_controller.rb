class SessionController < ApplicationController
  def new
  end # new

  def create
    user = User.find_by email: params[:email]

    if user.present? && user.authenticate( params[:password])
    
      session[:user_id] = user.id
      
      redirect_to home_path

    else 
      flash[:error] = 'Invalid email or password'
      redirect_to login_path

  end #login check
end # create

  def destroy
    session[:user_id] = nil #Logs out the user.
    redirect_to login_path
  end

end # session controller
