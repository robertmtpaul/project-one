class StartupsController < ApplicationController
  def new
    @startup = Startup.new #new empty object in memory to give to form_for.
  end

  def create
    Startup.create startup_params #
    redirect_to all_startups_path
  end

  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find params[:id]
  end

  def edit
  end

  def update
  end

  private 
  def startup_params
    params.require( :startup).permit(:name, :description, :valuation, :funding, :status, :employees)
  end

end
