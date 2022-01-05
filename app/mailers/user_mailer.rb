class UserMailer < ApplicationMailer
  default from: 'micolet@noreply.com'

  def welcome_email
    @user = params[:subscriber]
    @url  = 'https://www.micolet.com/'
    mail(to: @user.email, subject: 'Welcome to Micolet')
  end
end
