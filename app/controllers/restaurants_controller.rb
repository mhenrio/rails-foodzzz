class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])

  end
end
