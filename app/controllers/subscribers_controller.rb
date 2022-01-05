class SubscribersController < ApplicationController
  before_action :set_subscribe, only: [:create]
  def index
    @subscriber = Subscriber.new
  end

  def create
    return other_mail if @subscriber
    @sub = Subscriber.new(subscriber_params)
    return other_mail if EmailValidationServices.validate(@sub.email) < 0.70
    if @sub.save
      # UserMailer.with(subscriber: @sub).welcome_email.deliver_later
      cookies[:saved_lead] = true
      redirect_to root_path, notice: 'Saved Successfully!'
    else
      redirect_to root_path, notice: 'Already Subscribed!'
    end
  end

  def other_mail
    redirect_to root_path, notice: 'Please Provide another mail'
  end

  def set_subscribe
    @subscriber = Subscriber.find_by(params[:email])
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, preferences: [] )
  end
end
