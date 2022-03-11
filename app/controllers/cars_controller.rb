class CarsController < ApplicationController
  def index
    if params[:query].present?
      @query = params[:query]
      @cars = Car.where("name iLike '%#{params[:query]}%'")
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
    @reviews = Review.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @user = current_user.id
    @car.user_id = @user
    if @car.save!
      redirect_to cars_path
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to cars_path
    flash[:alert] = "Car Updated."
  end
  private

  def car_params
    params.require(:car).permit(:model, :price, :photo)
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
