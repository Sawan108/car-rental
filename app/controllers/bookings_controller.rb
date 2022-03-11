class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_car, only: [:new, :create]

  def index
    @bookings = Booking.all
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  # def show

  # end

   def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
      if @booking.save
        redirect_to bookings_path
      else
        render :new
      end
   end

  def destroy
    @booking.destroy
    redirect_to bookings_path(@booking.car)
  end

    private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
