class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :proposals
  has_many :topics, through: :proposals

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  after_create :set_up_account

  def backer?
    role == "backer"
  end

  private
    def set_up_account
      account = Account.create(title: fullname, email: email_address)
    
      account.grant_access_to self
    end
end
