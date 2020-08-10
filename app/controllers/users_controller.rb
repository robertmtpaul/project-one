class UsersController < ApplicationController
  def new
    @User = Usern.new # b/c the form_form helper needs @user.
  end

  def create
    @user = User.create User_params

    #Checks whether the above create was successful (i.e. created a row in the users table)
  end

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
