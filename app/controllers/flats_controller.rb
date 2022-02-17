require 'json'
require 'open-uri'

class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @flats = Flat.where('name LIKE ?', "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def show
    @flat = Flat.find(params[:id])
    url = "https://api.mapbox.com/geocoding/v5/mapbox.places/#{@flat.address}.json?access_token=pk.eyJ1IjoiY2FtZGNoIiwiYSI6ImNremgwb20xcjFydWYydW82NDNtdHEwdmcifQ.TRI2NzboMMA-aFrJaJ1DNw"
    map_serialized = URI.open(url).read
    map = JSON.parse(map_serialized)
    map_longitude = map['features'][0]['bbox']
    @map_image = "https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/#{map_longitude}/750x300?access_token=pk.eyJ1IjoiY2FtZGNoIiwiYSI6ImNremgwb20xcjFydWYydW82NDNtdHEwdmcifQ.TRI2NzboMMA-aFrJaJ1DNw"
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def search
    raise
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night, :url_img)
  end
end
