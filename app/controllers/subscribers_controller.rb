class SubscribersController < ApplicationController
  before_action :set_subscribe, only: [:create]

  def create
    return other_mail if @subscriber

    @sub = Subscriber.new(subscriber_params)

    return other_mail unless EmailValidationServices.validate(@sub.email)
    
    if @sub.save
      UserMailer.with(subscriber: @sub).welcome_email.deliver_later
      redirect_to root_path, notice: 'Saved Successfully!'
    else
      redirect_to root_path, notice: 'Please choose a preference'
    end
  end

  def other_mail
    redirect_to root_path, notice: 'Please Provide another mail'
  end

  def set_subscribe
    @subscriber = Subscriber.find_by(email: params[:email])
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, preferences: [] )
  end
end
