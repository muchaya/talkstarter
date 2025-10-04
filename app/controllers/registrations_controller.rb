class RegistrationsController < ApplicationController
  allow_unauthenticated_access
  layout "plain"

  def new
    user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      start_new_session_for user
      redirect_to after_registration_url, notice: 'Successfully signed up'
    else
      render :new
    end
  end

  def user_params
    params.expect(user: %i[fullname email_address name password password_confirmation])
  end
end
