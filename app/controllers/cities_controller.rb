class CitiesController < ApplicationController
  def new
  end

  def create
  end

  def index
    @cities = Startup.all.group_by(&:city)
  end

  def show
    @city = City.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
