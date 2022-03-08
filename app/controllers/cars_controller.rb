class CarsController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @cars = Car.where("name iLike '%#{params[:query]}%'")
    else
      @cars = Car.all
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:model, :price)
  end
end
