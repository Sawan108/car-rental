class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create

    @booking = Booking.find(params[:car_id])
    @review = Review.new
    @review.car = @booking.car

    if @review.save
      redirect_to cars_path(@car)
    else
      redirect_to bookings_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
