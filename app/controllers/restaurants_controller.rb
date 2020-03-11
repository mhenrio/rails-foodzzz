class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    @restaurants = Restaurant.geocoded #returns flats with coordinates
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end


  def show
  end
end
