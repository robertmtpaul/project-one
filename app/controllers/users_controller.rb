class UsersController < ApplicationController
  def new
    @User = User.new # b/c the form_form helper needs @user.
  end

  def create
    @user = User.create user_params

    #Checks whether the above create was successful (i.e. created a row in the users table)
    if @user.persisted?
      session[:user_id] = @user.id #log in the newly created acct
      redirect_to root_path
    else 
      #redirect_to new_user_path #
      # raise 'hell'
      render :new
    end
  end #create

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation, :image, :bio, :linkedin)
  end
end
