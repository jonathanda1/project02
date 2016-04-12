class RestaurantsController < ApplicationController
  before_action :authorize, except: [:index, :show]

   def index
    @restaurants = Restaurant.all.order(:name)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :location, :description, :cuisine))
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update_attributes(params.require(:restaurant).permit(:name, :location, :description, :cuisine))
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def destroy
   @restaurant = Restaurant.find(params[:id])
   @restaurant.destroy
    redirect_to restaurants_path
  end

end
