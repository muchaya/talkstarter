class UsersController < ApplicationController
  allow_unauthenticated_access

  layout "plain", only: :show

  def show
    @memberships = Membership.where(user_id: params[:id])
  end
end
