class ReviewsController < ApplicationController
before_action :set_booking, only: [:new, :create]
before_action :set_experience, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create

    @review = Review.new(review_params)
    authorize @review
    @review.booking = @booking
    if @review.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_experience
    @experience = Experience.find(params[:experience_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :stars)
  end

end
