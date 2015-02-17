class DashboardController < ApplicationController

  def index

  end

  def about_us

  end

  def contact

  end

  def booking
    flash[:notice] = "Successfully Booked"
    redirect_to authenticated_root_path
  end

end
