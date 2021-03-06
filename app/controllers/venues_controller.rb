class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end
  def new
    @venue = Venue.new
  end
  def create
    @venue = Venue.create(venue_params)
    if @venue.save!
      flash[:success] = "Created a new venue"
      redirect_to root_path
    else
      flash[:error] = "Could not create venue"
      render 'new'
    end
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :full_address, :region_id)
  end
end
