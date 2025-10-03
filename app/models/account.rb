class Account < ApplicationRecord
  has_many :memberships

  def grant_access_to(user)
    Membership.create!(account_id: id, user_id: user.id)
  end
end
