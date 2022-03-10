class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
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
