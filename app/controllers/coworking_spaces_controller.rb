class CoworkingSpacesController < ApplicationController
  
  before_action :check_if_logged_in, except: [ :index, :show]

  def new
    @coworking_space = CoworkingSpace.new #new empty object in memory to give to form_for.
  end

  def create

    # Handle upload, if file was uploaded
    if params[:file].present?
      # actually forward uploaded file on to Cloudinary server
      response = Cloudinary::Uploader.upload params[:file]
      @coworking_space.image = response['public_id']      
      @coworking_space.save
    end

    CoworkingSpace.create coworking_space_params #
    redirect_to coworking_spaces_path
  end

  def index
    @coworking_spaces = CoworkingSpace.all
  end

  def show
    @coworking_space = CoworkingSpace.find params[:id]
  end

  def edit
    @coworking_space = CoworkingSpace.find params[:id] 
  end

  def update
    @coworking_space = CoworkingSpace.find params[:id]

    # Update the record with strong params:
    @coworking_space.update coworking_space_params

    # Redirect to show page.
    redirect_to( coworking_spaces_path(params[:id]) )

  end

  def destroy
    CoworkingSpace.destroy params[:id]
    redirect_to coworking_spaces_path
  end


  private 
  def coworking_space_params
    params.require( :coworking_space).permit(:name, :image, :description, :reviews, :companies)
  end

end