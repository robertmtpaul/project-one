class StartupsController < ApplicationController
  before_action :check_if_logged_in, except: [ :index, :show]
  
  def new
    @startup = Startup.new #new empty object in memory to give to form_for.
  end

  def create
    
    @startup = Startup.create startup_params #
    # Handle upload, if file was uploaded
    if params[:file].present?
      # actually forward uploaded file on to Cloudinary server
      response = Cloudinary::Uploader.upload params[:file]
      @startup.image = response['public_id']      
      @startup.save
    end

    redirect_to startups_path
  end

  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find params[:id]
  end

  def edit
    @startup = Startup.find params[:id] 
  end

  def update
    @startup = Startup.find params[:id]

    # Update the record with strong params:
    @startup.update startup_params

    # Redirect to show page.
    redirect_to( startup_path(params[:id]) )

  end

  def destroy
    Startup.destroy params[:id]
    redirect_to startups_path
  end


  private 
  def startup_params
    params.require( :startup).permit(:name, :description, :valuation, :funding, :status, :employees, :image)
  end

end
