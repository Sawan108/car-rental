class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    # @booking = Booking.find(params[:booking_id])
    @car = Car.find(params[:car_id])
  end

  def create

    @car = Car.find(params[:car_id])
    @review = Review.new(review_params)
    @review.car = @car

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
