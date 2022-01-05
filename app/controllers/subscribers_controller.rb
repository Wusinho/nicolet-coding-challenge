class SubscribersController < ApplicationController
  # before_action :set_subscribe

  def create
    # @subscriber = Subscriber.find_by(email: params[:email])
    # return duplicated_mail if @subscriber

    @sub = Subscriber.new(subscriber_params)

    return other_mail unless EmailValidationServices.validate(@sub.email)

    if @sub.save
      UserMailer.with(subscriber: @sub).welcome_email.deliver_later
      redirect_to root_path, notice: 'Saved Successfully!'
    else
      redirect_to root_path, notice: 'Please choose a preference/ Add a valid mail'
    end
  end

  def other_mail
    redirect_to root_path, notice: 'Please Provide another mail'
  end

  def duplicated_mail
    redirect_to root_path, notice: 'Please Provide another mail'
  end

  def set_subscribe
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, preferences: [] )
  end
end
