class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create

    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @review.car = @booking.car

    if @review.save
      redirect_to car_path(@car)
    else
      redirect_to bookings_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
