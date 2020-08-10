class UsersController < ApplicationController
  def new
    @user = User.new # b/c the form_form helper needs @user.
  end

  def create
    @user = User.create user_params


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
