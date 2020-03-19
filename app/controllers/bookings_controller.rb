class BookingsController < ApplicationController
  def new
    # we need @experience in our `simple_form_for`
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    # we need `experience_id` to associate booking with corresponding experience
    @experience = Experience.find(params[:experience_id])
    @booking.experience = @experience
    if authorize @booking
      @booking.user = current_user
    else
      render :home
    end
    @booking.confirmed = "Pending"
    if @booking.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def confirm
  end

  def reject
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :participants_no)
  end
end
