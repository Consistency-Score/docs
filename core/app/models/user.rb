class User < ApplicationRecord
  has_secure_password
  has_many :sessions

  validates :username, presence: true
  validates :email, presence: true
  # validates :password_digest, presence: true
end
