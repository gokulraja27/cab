class DashboardController < ApplicationController

  def index
    @booking = Booking.new

  end

  def about_us

  end

  def contact

  end

  def booking
    binding.pry
    flash[:notice] = "Successfully Booked"
    redirect_to authenticated_root_path
  end

end
