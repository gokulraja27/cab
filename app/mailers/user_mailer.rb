class UserMailer < ActionMailer::Base
  default from: 'no-reply@cab.com'

  def confirmation_email(user)
    @user = user
    @url  = 'http://www.cab.com'
    @subject = "Hi #{@user.email}, your booking has been confirmed please login and check your booking status"
    mail(to: @user.email, subject:  @subject)
  end
end
