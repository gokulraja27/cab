class UserMailer < ActionMailer::Base
  default from: 'no-reply@cab.com'

  def confirmation_email(user, booking)
    @fare = calculate_approx_fare(booking)
    @user = user
    @url  = 'http://www.cab.com'
    @subject = "Booking Details from Cab Services"
    mail(to: @user.email, subject:  @subject)
  end

  def calculate_approx_fare(booking)
    kilometer = Distance.find(booking.distance_id).kilometer
    vehicle_fare = Vehicle.find(booking.vehicle_id).fare
    kilometer * vehicle_fare
  end
end
