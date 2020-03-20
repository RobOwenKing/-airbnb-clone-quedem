class DashboardsController < ApplicationController
  def mybookings
    # @mybookings = Booking.where(user: current_user)
    @mybookings = current_user.bookings
    authorize(:dashboard)
  end

  def myexperiences
    @myexperiences = current_user.experiences
    authorize(:dashboard)
  end
end
