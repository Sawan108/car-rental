class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  # def show

  # end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @booking.car = @current_user
  #     if @booking.save
  #       redirect_to _path(@)
  #     else
  #       render :new
  #     end
  # end

  def destroy
    @booking.destroy
    redirect_to bookings_path(@booking.car)
  end

    private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :car_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:list_id])
  end
end
