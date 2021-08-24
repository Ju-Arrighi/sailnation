class ServicesController < ApplicationController
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
  end

  def index
    @services = Service.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

end
