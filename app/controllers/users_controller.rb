class UsersController < ApplicationController
  before_action :check_if_logged_in, except: [ :new, :index, :show]

  def index
    @users = User.all
  end

  def new
    @user = User.new # b/c the form_form helper needs @user.
  end

  def create

    @user = User.create user_params

    # Handle upload, if file was uploaded
    if params[:file].present?
      # actually forward uploaded file on to Cloudinary server
      response = Cloudinary::Uploader.upload params[:file]
      @user.image = response['public_id']      
      @user.save
    end

    # @user.user_id = @current_user.id
    #@user.save
    
    if @user.persisted?
      #check whether the above create successful
      session[:user_id] = @user.id  #log in the newly created account
      redirect_to root_path

    else
      render :new
    end
  end #create

  def show
    @user = User.find params[:id]
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
