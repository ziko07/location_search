class LocationsController < ApplicationController

  def new
    @location = Location.new
  end

  def edit
    @location = Location.find_by_id(params[:id])
    unless @location.present?
      redirect_to root_path
    end
    respond_to do |format|
      format.html{ }
    end
  end

  def update
    location = Location.find_by_id(params[:id])
    unless location.present?
      redirect_to root_path
    end
    respond_to do |format|
      location.update_attributes(location_params)
      format.html{
        redirect_to location_path(location)
      }
    end
  end

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find_by_id(params[:id])
  end

  def create
    location = Location.create(location_params)
    respond_to do |format|
      format.html{
        redirect_to edit_location_path(location)
      }
    end
  end

end


private

def location_params
  params.require(:location).permit!
end