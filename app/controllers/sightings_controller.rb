class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: sightings, only: ["bird_id"]
  end

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting
  end

end
